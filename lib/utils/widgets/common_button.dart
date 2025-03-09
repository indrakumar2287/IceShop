

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_fonix/utils/const/color.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? elevation;
  final double? textHeight;
  final Color? shadowColor;
  final double? borderRadius;
  final double? containerBorder;
  final double? fontSize;
  // final String fontFamily;
  final Color? textColor;
  final double offset;
  final bool showArrow;
  final Color? primary;
  final Color? forGroundColor;
  final Color borderColor;
  final double height;
  final FontWeight fontWeight;
  final bool showBorder;

  const CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.elevation,
    this.shadowColor,
    this.borderRadius,
    this.containerBorder,
    this.fontSize = 18,
    // this.fontFamily = AppFonts.visbyRoundCF,
    this.textColor = AppColors.white,
    this.offset = 5.5,
    this.showArrow = false,
    this.height = 45,
    this.fontWeight = FontWeight.w400,
    this.primary = AppColors.primary,
    this.showBorder = false,
    this.borderColor = AppColors.primary,
    this.forGroundColor,
    this.textHeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(containerBorder ?? 15),
          border: showBorder ? Border.all(width: 1, color: borderColor) : null),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: elevation,
            backgroundColor: primary,
            shadowColor: shadowColor,
            foregroundColor: forGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 15),
            )),
        child: FittedBox(
          child: TextWidget(
            // text: text?.toUpperCase() ?? "",
            text: text ?? "",
            textAlign: TextAlign.center,
            color: textColor,
            // fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}