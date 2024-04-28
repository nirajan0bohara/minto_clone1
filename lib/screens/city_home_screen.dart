import 'package:flutter/material.dart';
import 'package:minto_clone/screens/home_screen.dart';
import 'package:minto_clone/screens/login_screen.dart';
import 'package:minto_clone/screens/mobiles_search_screen.dart';
import 'package:minto_clone/widgets/custom_dialog_widget.dart';
import 'package:minto_clone/widgets/custom_searchbar.dart';

import '../utils/constants/color.dart';
import '../widgets/modalbottomsheet.dart';

class CityHomePage extends StatefulWidget {
  const CityHomePage({super.key});

  @override
  State<CityHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<CityHomePage> {
  final List<Map<String, dynamic>> _smartphones = [
    {"price": 14000, "name": "Xiaomi Redmi Note 5 Pro"},
    {"price": 20000, "name": "Samsung Galaxy A50"},
    {"price": 18000, "name": "Realme 6 Pro"},
    {"price": 25000, "name": "OnePlus Nord"},
    {"price": 30000, "name": "Apple iPhone SE (2020)"},
    {"price": 16000, "name": "Motorola Moto G Power"},
    {"price": 22000, "name": "Google Pixel 4a"},
    {"price": 17000, "name": "OPPO F15"},
    {"price": 28000, "name": "Xiaomi Poco X3"},
    {"price": 15000, "name": "Vivo Y20"},
    {"price": 19000, "name": "Realme Narzo 20 Pro"},
    {"price": 27000, "name": "Samsung Galaxy M31s"},
    {"price": 32000, "name": "OnePlus 8T"},
    {"price": 21000, "name": "Apple iPhone XR"},
    {"price": 23000, "name": "Motorola Moto G Stylus"},
    {"price": 26000, "name": "Google Pixel 4a 5G"},
    {"price": 29000, "name": "Xiaomi Mi 10i"},
    {"price": 33000, "name": "Samsung Galaxy S20 FE"},
    {"price": 24000, "name": "OPPO A53"},
    {"price": 17000, "name": "Vivo V20"},
    {"price": 30000, "name": "Realme X3 SuperZoom"},
    {"price": 31000, "name": "Apple iPhone 11"},
    {"price": 35000, "name": "OnePlus 8"},
    {"price": 18000, "name": "Motorola Moto G9 Plus"},
    {"price": 25000, "name": "Google Pixel 5"},
    {"price": 27000, "name": "Xiaomi Mi 10T"},
    {"price": 28000, "name": "Samsung Galaxy A71"},
    {"price": 29000, "name": "OPPO Reno4 Pro"},
    {"price": 32000, "name": "Vivo V20 Pro"},
    {"price": 33000, "name": "Realme X50 Pro"},
    {"price": 34000, "name": "Apple iPhone 12 Mini"},
    {"price": 35000, "name": "OnePlus Nord N10 5G"},
    {"price": 36000, "name": "Motorola Moto G 5G Plus"},
    {"price": 37000, "name": "Google Pixel 4 XL"},
    {"price": 38000, "name": "Samsung Galaxy Note 10 Lite"},
    {"price": 39000, "name": "Xiaomi Mi Note 10 Lite"},
    {"price": 40000, "name": "OPPO Reno3 Pro"},
    {"price": 41000, "name": "Vivo X50 Pro+"},
    {"price": 42000, "name": "Realme X2 Pro"},
  ];

  static String raEmoji = "₹";

  List<IconData> navIcons = [
    Icons.home_outlined,
    Icons.chat_outlined,
    Icons.dashboard_outlined,
  ];

  List<String> navTitle = [
    'Home',
    'Chat',
    'Dashboard',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          child: const SizedBox(
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 4),
                Text('Delhi'),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 35,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline_outlined),
            onPressed: () {
              // Add your search action here
              showGeneralDialog(
                context: context,
                barrierColor: Colors.black38,
                barrierLabel: 'Label',
                barrierDismissible: true,
                pageBuilder: (_, __, ___) => const Center(
                  child: Dialog(
                    backgroundColor: Colors.transparent,
                    child: Stack(
                      children: [
                        CardDialog(),
                        DialogBoxCancleButton(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CustomSearchBar2(
            text: 'Search mobiles',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MobileSearchScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        margin: const EdgeInsets.all(7),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Image(
                            image:
                                AssetImage('assets/phone_logo/apple-logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: _smartphones.length, // Number of items in the list
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 17.0, right: 17.0, bottom: 12),
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
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
                          const Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                'Delhi',
                              ),
                            ],
                          ),
                        ],
                      ),
                      onTap: () {
                        // Add your list item tap action here
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return const ModalBottomSheet();
                            });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(),
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text('Sell'),
        ),
      ),
    );
  }
}
