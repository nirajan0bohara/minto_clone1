import 'package:flutter/material.dart';
import 'package:minto_clone/screens/chat_screens/chat_nav_page.dart';
import 'package:minto_clone/screens/city_home_screen.dart';
import 'package:minto_clone/screens/Dashboard_screen/nav_dashboard_page.dart';
import 'package:minto_clone/utils/constants/color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myCurrentIndex = 0;
  List pages = [
    const CityHomePage(),
    const ChatScreen(),
    const DashBoardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          top: 14,
          left: 25,
          right: 25,
          bottom: 28,
        ),

        // margin: const EdgeInsets.symmetric(
        //   horizontal: 25,
        //   vertical: 22,
        // ),
        decoration: const BoxDecoration(
            // color: Colors.black,
            ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.white,
            currentIndex: myCurrentIndex,
            onTap: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_outlined), label: 'DashBoard'),
            ],
          ),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
