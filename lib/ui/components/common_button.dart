import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Color backGroundColor;
  final double radius;
  final Function onTap;
  final Widget child;

  const CommonButton({
    super.key,
    required this.backGroundColor,
    required this.radius,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { onTap(); },
      child: Ink(
        padding: EdgeInsets.symmetric(vertical: 19, horizontal: 24),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: child,
      ),
    );
  }
}
