import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/svg_pic.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric( vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left-side Grid Icon
          Icon(
            Icons.grid_view_rounded,
            color: AppColors.primary, // Adjust color based on your theme
            size: w*0.08,
          ),

          // Right-side Notification & Profile
          Row(
            children: [
              const SvgPic(image: AppImages.notificationIcon),
              SizedBox(width: w * 0.04),
              CircleAvatar(
                radius: 20, // Background behind profile
                child: ClipOval(
                  child: Image.asset(
                    AppImages.profileImage, // Replace with actual asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
