import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_fonix/utils/const/color.dart';


class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  final Color? decorationColor;
  final String? fontFamily;
  final double? fontSize;
  final double? minFont;
  final double? decorationThickness;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final int? maxLines;
  final double? height;
  final bool? isOutFitFont;
  final List<Shadow>? shadows;
  const TextWidget(
      {Key? key,
        required this.text,
        this.textAlign,
        this.color = AppColors.primary,
        this.fontFamily,
        // this.fontFamily = AppFonts.visbyRoundCF,
        this.fontSize,
        this.overflow,
        this.fontWeight = FontWeight.w400,
        this.decoration,
        this.maxLines,
        this.height,
        this.decorationColor,
        this.decorationThickness,
        this.minFont,
        this.isOutFitFont,
        this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      // textDirection: TextDirection.LTR,
      // minFontSize: minFont ?? 2,
      style: isOutFitFont==true?GoogleFonts.outfit(
        color: color,
        height: height,
        decoration: decoration,
        fontSize: fontSize,
        shadows: shadows,
        fontWeight: fontWeight,
        decorationColor: decorationColor,
        decorationThickness: decorationThickness,
      ) : GoogleFonts.itim(
        color: color,
        height: height,
        decoration: decoration,
        fontSize: fontSize,
        shadows: shadows,
        fontWeight: fontWeight,
        decorationColor: decorationColor,
        decorationThickness: decorationThickness,
      ),
    );
  }
}
