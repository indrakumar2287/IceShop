import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopping_fonix/main.dart';
import 'package:shopping_fonix/utils/const/color.dart';
import 'package:shopping_fonix/utils/others/dimentions.dart';


class CustomSnackBar {
  CustomSnackBar._();

  // For error or alert ...........................
  static void redShowSnackBar(String title, String message, {bool redMessage = true}) {
    log("message   ==> $message");

    ScaffoldMessenger.of(navKey.currentContext!).clearSnackBars();
    if (redMessage) {
      ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
        SnackBar(
          content: Text(
            title == "" ? '$message' : '$message',
            style: const TextStyle(color: AppColors.white),
          ),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
          // margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03, bottom: h  - h * 0.15),
          margin: EdgeInsets.all(w * 0.03),
        ),
      );
    }
  }

  // For successful result ...................
  static void greenShowSnackBar(String title, String message) {
    log("message   ==> $message");

    ScaffoldMessenger.of(navKey.currentContext!).clearSnackBars();
    ScaffoldMessenger.of(navKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(
          title == "" ? '$message' : '$message',
          style: const TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.green,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        // margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03, bottom: h  - h * 0.15),
        margin: EdgeInsets.all(w * 0.03),
      ),
    );
  }
}

// Get Snackbar

// class CustomSnackbar {
//   CustomSnackbar._();
//
// // for error or alert ...........................
//   static void redShowSnackBar(String title, String message, {bool redMessage = true}) {
//     log("message   ==> $message");
//     Get.closeAllSnackbars();
//     if (redMessage) {
//       Get.snackbar(title, message, backgroundColor: Colors.redAccent, margin: EdgeInsets.all(w * 0.03), colorText: AppColors.white, snackStyle: SnackStyle.FLOATING);
//     }
//   }
//
// // for successful result ...................
//   static void greenShowSnackBar(String title, String message) {
//     log("message   ==> $message");
//     Get.closeAllSnackbars();
//     Get.snackbar(title, message, backgroundColor: AppColors.kGreenColor, margin: EdgeInsets.all(w * 0.03), colorText: AppColors.white, snackStyle: SnackStyle.FLOATING);
//   }
// }
