import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class Text20SelectColorBold extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign? align;

  const Text20SelectColorBold({
    super.key,
    required this.text,
    required this.color,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color),
      textAlign: align,
    );
  }
}

class Text20DefaultColorBold extends StatelessWidget {
  final String text;
  final TextAlign? align;

  const Text20DefaultColorBold({super.key, required this.text, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      textAlign: align,
    );
  }
}

class Text20DeepBlueBold extends StatelessWidget {
  final String text;
  const Text20DeepBlueBold({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColor.deepPurple80,
      ),
    );
  }
}
