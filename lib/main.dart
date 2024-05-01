import 'package:flutter/material.dart';
import 'package:minto_clone/screens/phones_Screens/device_details_page.dart';
import 'package:minto_clone/screens/phones_Screens/phone_brand_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //to load the onboarding screen for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();

  //this will set to seenOnboard to false
/*Uncomment below to set the onboarding screen seen for the first time only */
  seenOnboard = pref.getBool('seenOnboard') ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minto",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const DeviceDetailsPage(),
      // seenOnboard == true ? HomeScreen() : OnBoardingScreen(),
    );
  }
}
