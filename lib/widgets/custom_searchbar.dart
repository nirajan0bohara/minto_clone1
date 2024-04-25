
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.blueGrey,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            color: textColor.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 35,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}

class CustomSearchBar2 extends StatelessWidget {
  CustomSearchBar2({
    super.key,
    required this.text,
    this.ontap,
  });
  final String text;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 52,
        margin: const EdgeInsets.only(right: 20, left: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.blueGrey,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 35,
              color: Colors.black.withOpacity(0.6),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
