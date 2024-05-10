import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Authentication_screens/clickable_text.dart';
import 'package:minto_clone/screens/Authentication_screens/otp_verification_screen.dart';
import 'package:minto_clone/screens/Authentication_screens/otpmodel.dart';
import 'package:minto_clone/utils/constants/color.dart';
import 'package:minto_clone/widgets/home_page_widgets/heading1.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //country picker
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final otpModel = Provider.of<OTPModel>(context);

    _phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: _phoneController.text.length),
    );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(34, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading1(
                text: 'Enter your phone number',
                textColor: Colors.black,
              ),
              const SizedBox(height: 5),
              const Text('We will send an OTP to your number'),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  controller: _phoneController,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: '0 0 0 - 0 0 0 - 0 0 0 0',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(18.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                            countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 500),
                            context: context,
                            onSelect: (value) {
                              setState(() {
                                selectedCountry = value;
                              });
                            },
                          );
                        },
                        child: Text(
                          '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: _phoneController.text.length > 9
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null,
                  ),
                  validator: (value) {
                    if (value!.length != 10) {
                      return 'Invalid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 390,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Call requestOTP and await the response
                      Future<Map<String, dynamic>> data =
                          otpModel.requestOTP(_phoneController.text);

                      // Await the response and access the message key
                      Map<String, dynamic> responseData = await data;
                      String? message = responseData['message'];

                      // Print the message
                      // print('Message: $message');
                      if (message == 'Otp sent successfully!!') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(responseData: responseData),
                          ),
                        );
                      }
                    }
                  },
                  child: otpModel.isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0, bottom: 10),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    // color: Colors.grey,
                    child: Column(
                      children: [
                        Text(
                          'By continuing, you agree to our',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        LinkableText(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
