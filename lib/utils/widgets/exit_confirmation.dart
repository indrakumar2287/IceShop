
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_fonix/utils/const/constant_text.dart';


class ExitConfirmationDialog extends StatelessWidget {
  const ExitConfirmationDialog({super.key});

  static Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    bool? exitConfirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // Prevent outside tap to dismiss dialog
      builder: (BuildContext context) {
        return const PopScope(
          canPop: false, // Prevent back button from closing the dialog
          child: ExitConfirmationDialog(),
        );
      },
    );

    return exitConfirmed;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title:  Text(AppStrings.exitApp),
      content:  Text(AppStrings.exitAppConfirmation),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            // Perform any action you want before exiting the app
            Navigator.of(context).pop(false); // Return false to indicate cancellation
          },
          child:  Text(AppStrings.cancel),
        ),
        CupertinoDialogAction(
          onPressed: () {
            // Exit the app
            SystemNavigator.pop(); // Close the app and return to home screen
          },
          isDestructiveAction: true,
          child:  Text(AppStrings.exitApp),
        ),
      ],
    );
  }
}