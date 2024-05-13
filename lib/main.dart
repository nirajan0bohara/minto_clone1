import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Authentication_screens/login_screen.dart';
import 'package:minto_clone/screens/Authentication_screens/otpmodel.dart';
import 'package:minto_clone/screens/home_screen.dart';
import 'package:minto_clone/screens/onboarding_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/Authentication_screens/verifymodel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
// ...firebase initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => OTPProvider()),
        ChangeNotifierProvider(create: (_) => OTPModel()),
        ChangeNotifierProvider(create: (_) => VerifyModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Minto",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home:
            seenOnboard == true ? const HomeScreen() : const OnBoardingScreen(),
        // seenOnboard == true ? HomeScreen() : OnBoardingScreen(),
      ),
    );
  }
}
