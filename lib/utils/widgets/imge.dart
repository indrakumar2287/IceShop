

import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
// import 'package:nb_utils/nb_utils.dart';
import 'package:shopping_fonix/utils/others/dimentions.dart';

class NetworkImageWidget extends StatelessWidget {
  final String link;
  final double? height;
  final double? width;
  final Color color ;

  const NetworkImageWidget({super.key,
    required this.link,
    this.height,
    this.width,
    this.color = Colors.white ,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      link,
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorBuilder: (context, Object exception, stackTrace) {
        return SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding:  EdgeInsets.all(h*0.01),
              child: Center(child: const Icon(Icons.error)),
            ));
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding:  EdgeInsets.all(h*0.01),
              child: Center(
                child: CircularProgressIndicator(
                  color: color,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
