import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Dashboard_screen/custom_text_button.dart';
import 'package:minto_clone/screens/Dashboard_screen/profile_screen.dart';

class DashModalBottomSheet extends StatelessWidget {
  const DashModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.46,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            height: 6,
            width: MediaQuery.of(context).size.width / 9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const ProfileScreen()));
                  },
                  text: 'Update Profile',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Notifications',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Contact Us',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Advertise',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Refund Policy',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Privacy Policy',
                ),
                const Divider(height: 1),
                CustomTextButton(
                  onPressed: () {
                    // Define your onPressed logic here
                  },
                  text: 'Logout',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
