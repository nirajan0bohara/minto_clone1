import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Authentication_screens/login_screen.dart';
import 'package:minto_clone/widgets/get_started_button.dart';

class ModalBottomSheetButton extends StatelessWidget {
  const ModalBottomSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22.0,
        top: 14,
        bottom: 10,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Row(
          children: [
            GetStartButton(
              buttonName: 'Message',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            const SizedBox(width: 22),
            SizedBox(
              width: 100,
              height: 65,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.greenAccent.shade400),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                child: const Icon(Icons.call),
              ),
            ),
          ],
        ),
      ),
    );
  }
}