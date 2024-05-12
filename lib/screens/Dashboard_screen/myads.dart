import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Dashboard_screen/asd2_screen.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({super.key});

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  static String raEmoji = "₹";
  final List<Map<String, dynamic>> _smartphones = [
    {"price": 14000, "name": "Xiaomi Redmi Note 5 Pro"},
    {"price": 20000, "name": "Samsung Galaxy A50"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _smartphones.length, // Number of items in the list
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 17.0, right: 17.0, bottom: 12, top: 12),
            child: Card(
              color: Colors.white,
              child: ListTile(
                splashColor: Colors.transparent,
                isThreeLine: true,
                leading: Container(
                  height: 60,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Image(
                    image: AssetImage('assets/realme.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 30.0),
                //   child: Icon(Icons.phone_android_outlined),
                // ),
                title: Text(
                  '$raEmoji ${_smartphones[index]['price']}',
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${_smartphones[index]['name']}',
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 24,
                      width: 70,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Center(
                        child: Text(
                          'Post now',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Add your list item tap action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ads2Screen(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
