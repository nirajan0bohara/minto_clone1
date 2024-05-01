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
        elevation: 1.5,
        backgroundColor: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 14),
                const Center(
                  child: Text(
                    'Apple iphone 15 Plus',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
                    Container(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                        right: 60,
                        left: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green),
                      ),
                      child: Column(
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
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                Center(
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.0,
                      ),
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
                ),
                const SizedBox(height: 38),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Condition of your device',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 18,
                    left: 18,
                    bottom: 20,
                  ),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DeviceCondition(
                        icon: Icons.phone_android_outlined,
                        text: 'Excellent',
                      ),
                      DeviceCondition(
                        icon: Icons.phone_iphone_outlined,
                        text: 'Good',
                      ),
                      DeviceCondition(
                        icon: Icons.phonelink_setup,
                        text: 'Okay',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Used for',
                    style: TextStyle(fontSize: 23),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeviceCondition extends StatelessWidget {
  const DeviceCondition({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
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
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 50,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
