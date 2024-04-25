import 'package:flutter/material.dart';
import 'package:minto_clone/screens/login_screen.dart';
import 'package:minto_clone/utils/constants/color.dart';
import 'package:minto_clone/widgets/get_started_button.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.green.shade100,
                    child: const Icon(Icons.person_2_outlined, size: 65),
                  ),
                  const SizedBox(width: 14),
                  const Text(
                    'Hi! Please login/register\nto enjoy the app\'s full\nexperience',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: 370,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Divider(
              height: 3,
              color: Colors.grey.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
