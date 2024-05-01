import 'package:flutter/material.dart';
import 'package:minto_clone/screens/phones_Screens/phone_series.dart';

class PhoneModels extends StatefulWidget {
  const PhoneModels({super.key});

  @override
  State<PhoneModels> createState() => _PhoneModelsState();
}

class _PhoneModelsState extends State<PhoneModels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Model',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: 20,
          ),
          child: Column(
            children: [
              GridView.builder(
                itemCount: 26,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhoneSeries(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0.0, 7),
                                color: Colors.grey.withOpacity(.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Center(
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/realme.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'samsung galaxy',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
