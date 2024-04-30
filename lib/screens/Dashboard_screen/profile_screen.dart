import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 38,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              size: 36,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 70,
                  // child: Image.asset(''),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change your profile picture',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Hey',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: 'Hey',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
