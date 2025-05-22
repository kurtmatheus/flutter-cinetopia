import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color backGroundColor;
  final double radius;
  final Widget child;

  const CommonButton({super.key, required this.backGroundColor, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(color: backGroundColor, borderRadius: BorderRadius.circular(radius)),
        child: child,
      ),
    );
  }
}
