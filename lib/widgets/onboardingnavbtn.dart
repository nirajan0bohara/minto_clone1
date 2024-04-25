import 'package:flutter/material.dart';

import '../utils/app_style/app_style.dart';

class OnBoardingNavBtn extends StatelessWidget {
  const OnBoardingNavBtn({
    super.key,
    required this.name,
    required this.onPressed,
  });

  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: kButtonText,
        ),
      ),
    );
  }
}
