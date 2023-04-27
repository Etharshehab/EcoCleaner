import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  late String data;
  late Color? color;
  late double? fontSize;
  late FontWeight? fontWeight;
  late TextAlign? textAlign;
  late double? horizontalMargin;
  late double? verticalMargin;
  MyText(
      {Key? key,
      required this.data,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.horizontalMargin,
      this.verticalMargin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalMargin ?? 0,
        vertical: verticalMargin ?? 0,
      ),
      child: Text(
        data,
        textAlign: textAlign,
        style: TextStyle(
          fontFamily: "Inter",
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
