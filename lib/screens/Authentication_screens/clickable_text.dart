//This is for clickable text
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkableText extends StatefulWidget {
  const LinkableText({super.key});

  @override
  State<LinkableText> createState() => _LinkableTextState();
}

class _LinkableTextState extends State<LinkableText> {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(color: Colors.black);
    TextStyle linkStyle = const TextStyle(color: Colors.blue);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
              text: 'Terms & Conditions',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  //here is action after clicking in the text
                }),
          TextSpan(
            text: ', ',
            style: defaultStyle,
          ),
          TextSpan(
              text: 'Refund ',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //here is action after clicking in the text
                }),
          TextSpan(
            text: 'and ',
            style: defaultStyle,
          ),
          TextSpan(
              text: 'Privacy Policy',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //here is action after clicking in the text
                }),
        ],
      ),
    );
  }
}