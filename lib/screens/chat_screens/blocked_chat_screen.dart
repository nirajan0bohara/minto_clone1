import 'package:flutter/material.dart';
import 'package:minto_clone/screens/chat_screens/login_chat_screen.dart';
import 'package:minto_clone/utils/constants/color.dart';

class BlockedChatScreen extends StatelessWidget {
  const BlockedChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen1(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.grey.shade50,
        title: const Text(
          'Blocked Chats',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // SvgPicture.asset('assets/undraw_texting_re_l11n.svg'),
          Image.asset('assets/undraw_Not_found_re_bh2e.png'),
          const SizedBox(height: 12),
          Text(
            'Your Blocked List is empty',
            style: TextStyle(
              fontSize: 32,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
