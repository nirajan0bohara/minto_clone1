import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:minto_clone/screens/Authentication_screens/login_screen.dart';
import 'package:minto_clone/screens/Authentication_screens/verifymodel.dart';
import 'package:minto_clone/utils/constants/color.dart';
import 'package:minto_clone/utils/show_snack_bar.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import '../../widgets/home_page_widgets/heading1.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    required this.responseData,
  });
  final Map<String, dynamic> responseData;

  void setResponseData() {}

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final verifyModel = Provider.of<VerifyModel>(context, listen: false);
    String? phoneNumber = widget.responseData['phonenumber'];
    String? sessionid = widget.responseData['sessionid'];
    print(dotenv.env["AUTH_TOKEN"]);
    // print(sessionId);
    _otpController.selection = TextSelection.fromPosition(
      TextPosition(offset: _otpController.text.length),
    );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 40, 26, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading1(
                text: 'Enter OTP',
                textColor: Colors.black,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sent on +$phoneNumber',
                    style: const TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'edit',
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Pinput(
                  controller: _otpController,
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green.shade300,
                      ),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the OTP';
                    }
                    // Add more validation if needed
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 26),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),
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
                    print("numvbeer");
                    if (_formKey.currentState!.validate()) {
                      print(_otpController.text);

                      Future<Map<String, dynamic>?> data =
                          verifyModel.otpVerification(
                              phoneNumber!, _otpController.text, sessionid!);

                      // Await the response and access the message key
                      Map<String, dynamic>? responseData = await data;
                      String? message = responseData?['message'];

                      if (message == 'OTP Verified') {
                        showSnackBar(context, 'Verified successfully');
                        Navigator.pop(context);
                        print('Verified successfully');
                        // OTP verified successfully
                        // Navigate to the next screen or perform any action
                      } else {
                        showSnackBar(context, 'Verification failed');
                        print('Verification failed');

                        // OTP verification failed
                        // Handle accordingly
                      }
                    }
                  },
                  child: const Text(
                    'Verify and Proceed',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
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
