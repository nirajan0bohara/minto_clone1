import 'package:flutter/material.dart';
import 'package:minto_clone/screens/chat_screens/blocked_chat_screen.dart';
import 'package:minto_clone/utils/constants/color.dart';
import 'package:minto_clone/widgets/bottom_nav_bar.dart';

class ChatScreen1 extends StatelessWidget {
  const ChatScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(),
              ),
            );
          },
        ),
        title: const Text(
          'Messages',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: double.infinity,
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          Container(
                            height: 6,
                            width: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 220.0, top: 16),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BlockedChatScreen()),
                                );
                              },
                              child: const Text(
                                'Blocked Chats',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(Icons.more_vert, size: 32),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SvgPicture.asset('assets/undraw_texting_re_l11n.svg'),
          Image.asset('assets/undraw_Not_found_re_bh2e.png'),
          const SizedBox(height: 12),
          Text(
            'Your Chatbox is empty',
            style: TextStyle(
              fontSize: 32,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Start a conversation with people whose\nproducts you want to buy',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
