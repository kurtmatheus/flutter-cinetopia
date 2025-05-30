import 'package:flutter/material.dart';

import '../styles/app_color.dart';

class Text20NoColorBold extends StatelessWidget {
  final String text;
  final Color color;

  const Text20NoColorBold({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold
    ),);
  }
}

class Text20DefaultBold extends StatelessWidget {
  final String text;
  final TextAlign? align;
  const Text20DefaultBold({super.key, required this.text, required this.align,});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
      textAlign: align,
    );
  }
}

class Text20DeepBlueBold extends StatelessWidget {
  final String text;

  const Text20DeepBlueBold({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        color: AppColor.deepPurple80,
        fontSize: 20,
        fontWeight: FontWeight.bold
    ),);
  }
}
