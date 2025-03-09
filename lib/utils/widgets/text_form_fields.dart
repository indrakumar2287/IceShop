


import 'package:shopping_fonix/utils/app_exports/app_exports.dart';



class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final String? hintText;
  final Widget? prefixIcon;
  final bool? enabled;
  final bool? readOnly;
  final int? maxLines;
  final Function()? onVisibilityIconTap;
  final bool isPassword;

  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.textInputAction,
    this.hintText,
    this.prefixIcon,
    this.enabled,
    this.readOnly = false,
    this.maxLines = 1,
    this.onVisibilityIconTap,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        readOnly: readOnly ?? false,
        enabled: enabled,
        maxLines: maxLines,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
          ),
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          suffixIcon: isPassword
              ? InkWell(
            onTap: onVisibilityIconTap,
            child: obscureText
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          )
              : null,
        ),
      ),
    );
  }
}


//
// class TextFormFieldWidget extends StatelessWidget {
//   final double? width;
//   final double? height;
//   final Color? cursorColor;
//   final Color? enabledBorderColor;
//   final Color? focusedBorderColor;
//   final Color? fillColor;
//   final Color? hintColor;
//   final Color borderColor;
//   final bool? filled;
//   final TextInputType? keyboardType;
//   final bool obscureText;
//   final InputBorder? border;
//   final Widget? suffixIcon;
//   final TextEditingController? controller;
//   final FormFieldValidator<String>? validator;
//   final ValueChanged<String>? onChanged;
//   final String? prefixText;
//   final String? hintText;
//   final AutovalidateMode? autoValidateMode;
//   final bool isPassword;
//   final List<TextInputFormatter>? inputFormatters;
//   final TextInputAction? textInputAction;
//   final Widget? prefixIcon;
//   final Widget? suffix;
//   final bool? enabled;
//   final bool? readOnly;
//   final int? maxLines;
//   final Key? textFieldKey;
//   final Function()? onVisibilityIconTap;
//   final TextAlign textAlign;
//   final double? borderRadius;
//   final double? hintFontSize;
//   final FontWeight? hintFontWeight;
//
//   const TextFormFieldWidget({
//     Key? key,
//     this.height,
//     this.width,
//     this.cursorColor = AppColors.black,
//     this.enabledBorderColor,
//     this.focusedBorderColor,
//     this.keyboardType,
//     this.obscureText = false,
//     this.border,
//     this.suffixIcon,
//     this.controller,
//     this.validator,
//     this.onChanged,
//     this.autoValidateMode = AutovalidateMode.onUserInteraction,
//     this.prefixText,
//     this.isPassword = false,
//     this.inputFormatters,
//     this.textInputAction,
//     this.prefixIcon,
//     this.enabled,
//     this.maxLines = 1,
//     this.hintText,
//     this.textFieldKey,
//     this.onVisibilityIconTap,
//     this.fillColor = AppColors.primaryLight,
//     this.filled = true,
//     this.readOnly = false,
//     this.hintColor = AppColors.textDarkGrey,
//     this.textAlign = TextAlign.start,
//     this.borderRadius, this.borderColor =AppColors.primaryLight , this.hintFontSize = 15, this.hintFontWeight = FontWeight.w400, this.suffix,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       key: textFieldKey,
//       textAlign: textAlign,
//       controller: controller,
//       cursorColor: cursorColor,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       validator: validator,
//       readOnly: readOnly??false,
//       enabled: enabled,
//       maxLines: maxLines,
//       onChanged: onChanged,
//       autovalidateMode: autoValidateMode,
//       inputFormatters: inputFormatters,
//       textInputAction: textInputAction,
//       expands: false,
//       style: TextStyle(
//         height: height
//       ),
//       decoration: InputDecoration(
//         border: border,
//         filled: filled,
//         fillColor: fillColor,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           // fontFamily: AppFonts.visbyRoundCF,
//           fontWeight: hintFontWeight,
//           fontSize: 12,
//           // color: hintColor,
//           color: AppColors.textDarkGrey.withOpacity(0.65),
//         ),
//         suffix: suffix,
//         suffixIcon: isPassword
//             ? InkWell(
//             onTap: onVisibilityIconTap,
//             child: obscureText
//                 ? const Icon(Icons.visibility_outlined)
//                 : const Icon(Icons.visibility_off_outlined))
//             : suffixIcon,
//         prefixIcon: prefixIcon,
//         prefixText: prefixText,
//         contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//         isCollapsed: false,
//         enabledBorder: OutlineInputBorder(
//           borderSide:  BorderSide(color: borderColor, width: 1),
//           borderRadius: BorderRadius.circular(borderRadius ?? 8),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide:  BorderSide(color: borderColor, width: 1),
//           borderRadius: BorderRadius.circular(borderRadius ?? 8),
//         ),
//         disabledBorder: OutlineInputBorder(
//           borderSide:  BorderSide(color: borderColor, width: 1),
//           borderRadius: BorderRadius.circular(borderRadius ?? 8),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderSide:  BorderSide(color: borderColor, width: 1),
//           borderRadius: BorderRadius.circular(borderRadius ?? 8),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide:  BorderSide(color: borderColor, width: 1),
//           borderRadius: BorderRadius.circular(borderRadius ?? 8),
//         ),
//       ),
//     );
//   }
// }
