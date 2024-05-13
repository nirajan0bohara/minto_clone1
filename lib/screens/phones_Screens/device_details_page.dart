import 'package:flutter/material.dart';

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
        scrollDirection: Axis.vertical,
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
                      width: 135,
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
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 23),
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
                  padding: EdgeInsets.only(left: 2.0),
                  child: Text(
                    'Condition of your device',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
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
                const SizedBox(height: 22),
                const Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'Used for',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Wrap(
                    spacing: 22,
                    runSpacing: 15,
                    children: [
                      BrandWarrentyButton(text: '0-3 Months', option: 'A'),
                      BrandWarrentyButton(text: '3-6 Months', option: 'B'),
                      BrandWarrentyButton(text: '6-12 Months', option: 'C'),
                      BrandWarrentyButton(
                          text: 'More than 1 year', option: 'D'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Text(
                    'Mobile under brand warrenty?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 4),
                const SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BrandWarrentyButton(
                          option: 'A',
                          text: 'Yes',
                        ),
                        BrandWarrentyButton(
                          option: 'B',
                          text: 'No',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Used for and brand warrenty button
class BrandWarrentyButton extends StatelessWidget {
  const BrandWarrentyButton({
    super.key,
    required this.text,
    required this.option,
  });

  final String text;
  final String option;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 160,
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
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Container(
                height: 28,
                width: 16,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(option),
                ),
              ),
              const SizedBox(width: 8),
              Text(text),
            ],
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
