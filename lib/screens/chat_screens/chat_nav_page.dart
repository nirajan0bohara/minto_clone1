import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.4,
        title: const Text('Messages'),
        shadowColor: Colors.grey.shade200,
      ),
      body: const Center(
        child: Text(
          'Login/Register to enjoy the app\'s full features.',
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
