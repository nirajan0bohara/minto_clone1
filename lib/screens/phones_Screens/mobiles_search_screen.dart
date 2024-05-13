import 'package:flutter/material.dart';

class MobileSearchScreen extends StatefulWidget {
  const MobileSearchScreen({super.key});

  @override
  State<MobileSearchScreen> createState() => _MobileSearchScreenState();
}

class _MobileSearchScreenState extends State<MobileSearchScreen> {
  List<String> mobilePhones = [
    "iPhone 13",
    "Samsung Galaxy S21",
    "Google Pixel 6",
    "OnePlus 9",
    "Xiaomi Mi 11",
    "Huawei P50",
    "Sony Xperia 1 III",
    "LG Velvet",
    "Motorola Edge+",
    "Oppo Find X3 Pro",
    "Apple iPhone 12",
    "Samsung Galaxy Note 20",
    "Google Pixel 5",
    "OnePlus 8T",
    "Xiaomi Mi 10",
    "Huawei Mate 40",
    "Sony Xperia 5 II",
    "LG Wing",
    "Motorola Razr",
    "Oppo Reno 5 Pro",
    "iPhone SE (2020)",
    "Samsung Galaxy S20",
    "Google Pixel 4a",
    "OnePlus Nord",
    "Xiaomi Redmi Note 10",
    "Huawei P40",
    "Sony Xperia 10 II",
    "LG V60 ThinQ",
    "Motorola Moto G Power",
    "Oppo F19 Pro",
    "iPhone 11",
    "Samsung Galaxy A71",
    "Google Pixel 4",
    "OnePlus 7T",
    "Xiaomi Redmi Note 9",
    "Huawei Nova 7i",
    "Sony Xperia 10 Plus",
    "LG G8 ThinQ",
    "Motorola Moto G Stylus",
    "Oppo A74",
    "iPhone XR",
    "Samsung Galaxy A51",
    "Google Pixel 3a",
    "OnePlus 7 Pro",
    "Xiaomi Redmi Note 8",
    "Huawei P30 Lite",
    "Sony Xperia L4",
    "LG Stylo 6",
    "Motorola Moto G Fast",
    "Oppo A54",
    "iPhone 8",
    "Samsung Galaxy A21s",
    "Google Pixel 3",
    "OnePlus 6T",
    "Xiaomi Redmi Note 7",
    "Huawei P20 Lite",
    "Sony Xperia XZ3",
    "LG K40",
    "Motorola Moto E6",
    "Oppo A15"
  ];

  List<String> _foundPhones = [];
  @override
  void initState() {
    _foundPhones = mobilePhones;
    super.initState();
  }

//function for search filter
  void _runFilter(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      //if search field is empty or only contains whitespace we will display all value
      results = [];
    } else {
      results = mobilePhones
          .where((phone) => mobilePhones.contains(enteredKeyword))
          .toList();
      //used lowercase method to make it case-insensitive
    }
    setState(() {
      _foundPhones = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 60.0, top: 13),
            child: SizedBox(
              width: 278,
              height: 20,
              child: TextFormField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                  hintText: 'Search mobiles',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: _foundPhones.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SplashScreen(),
              //   ),
              // );
            },
            child: Column(
              children: <Widget>[
                ListTile(
                  trailing: Icon(
                    Icons.arrow_outward_outlined,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  title: Text(
                    _foundPhones[index],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
