import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

Widget text20SelectColorBold({
  required String text,
  required Color color,
  TextAlign? align,
}) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color),
    textAlign: align,
  );
}

Widget text20DefaultColorBold({required String text, TextAlign? align}) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    textAlign: align,
  );
}

Widget text32DefaultColorBold({required String text, TextAlign? align}) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
    textAlign: align,
  );
}

Widget text20DeepBlueBold({required String text}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColor.deepPurple80,
    ),
  );
}

Widget textSelectAll({
  required String text,
  required Color color,
  required double size,
  required FontWeight fontWeight,
  TextAlign? align,
}) {
  return Text(
    text,
    style: TextStyle(fontWeight: fontWeight, fontSize: size, color: color),
    textAlign: align,
  );
}
