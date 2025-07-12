import 'dart:ui';

import 'package:bookly/features/home/presentation/widgets/blured_icon_button.dart';
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key, required this.image, this.borderRadius = 16, this.child, this.aspectRatio = 4 / 5.5});
  final String image;
  final Widget? child;
  final double aspectRatio;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        // width: MediaQuery.of(context).size.width * .3,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            child ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
