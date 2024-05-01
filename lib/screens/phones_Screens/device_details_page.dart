import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeviceDetailsPage extends StatefulWidget {
  const DeviceDetailsPage({super.key});

  @override
  State<DeviceDetailsPage> createState() => _DeviceDetailsPageState();
}

class _DeviceDetailsPageState extends State<DeviceDetailsPage> {
  String selectedStorage = 'None selected';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Device Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 14),
                  const Text(
                    'Apple iphone 15 Plus',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset("assets/realme.jpg"),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 38,
                            width: 140,
                            child: RadioMenuButton(
                              value: '6 GB/128 GB',
                              groupValue: selectedStorage,
                              onChanged: (selectedValue) {
                                setState(() {
                                  selectedStorage = selectedValue!;
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                elevation: const MaterialStatePropertyAll(2),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shadowColor:
                                    const MaterialStatePropertyAll(Colors.grey),
                              ),
                              child: const Text('6 GB/128 GB'),
                            ),
                          ),
                          const SizedBox(height: 14),
                          SizedBox(
                            height: 38,
                            width: 140,
                            child: RadioMenuButton(
                              value: '6 GB/256 GB',
                              groupValue: selectedStorage,
                              onChanged: (selectedValue) {
                                setState(() {
                                  selectedStorage = selectedValue!;
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                elevation: const MaterialStatePropertyAll(2),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shadowColor:
                                    const MaterialStatePropertyAll(Colors.grey),
                              ),
                              child: const Text('6 GB/256 GB'),
                            ),
                          ),
                          const SizedBox(height: 14),
                          SizedBox(
                            height: 38,
                            width: 140,
                            child: RadioMenuButton(
                              value: '6 GB/512 GB',
                              groupValue: selectedStorage,
                              onChanged: (selectedValue) {
                                setState(() {
                                  selectedStorage = selectedValue!;
                                });
                              },
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                elevation: const MaterialStatePropertyAll(2),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                shadowColor:
                                    const MaterialStatePropertyAll(Colors.grey),
                              ),
                              child: const Text('6 GB/512 GB'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 36),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(width: 35),
                          SizedBox(
                            height: 20,
                            width: 130,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
