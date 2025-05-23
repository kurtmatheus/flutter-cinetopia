import 'package:cinetopia/ui/components/common_button.dart';
import 'package:flutter/material.dart';

class ButtonTrailingIcon extends StatelessWidget {
  final Color backGroundColor;
  final double radius;
  final Widget text;
  final Icon icon;
  final Function onTap;

  const ButtonTrailingIcon({
    super.key,
    required this.backGroundColor,
    required this.radius,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      backGroundColor: backGroundColor,
      radius: radius,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [text, SizedBox(width: 5), icon],
      ),
    );
  }
}
