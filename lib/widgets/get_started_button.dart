import 'package:flutter/material.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 65,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.greenAccent.shade400),
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
        child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
