import 'package:flutter/material.dart';

import 'package:ecocleaner_v2/config/my_text.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.titleColor,
    this.verticalMargin,
    this.horizontalMargin,
    this.borderColor,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? verticalMargin;
  final double? horizontalMargin;
  final Color? borderColor;

  BorderRadius get _borderRadius => BorderRadius.circular(20.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalMargin ?? 0,
        vertical: verticalMargin ?? 0,
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Container(
          width: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? const Color.fromRGBO(49, 204, 149, 1),
            borderRadius: _borderRadius,
            border: Border.all(
              color: borderColor ?? Colors.greenAccent.shade700,
            ),
          ),
          child: MyText(
            data: title,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: titleColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
