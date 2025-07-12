import 'dart:ui';

import 'package:bookly/features/home/presentation/widgets/blured_icon_button.dart';
import 'package:bookly/features/home/presentation/widgets/image_box.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.image, this.parentHight});
  final String image;
  final double? parentHight;

  @override
  Widget build(BuildContext context) {
    final buttonSize = parentHight == null ? parentHight! * .25 : 40.0;
    return ImageBox(
      image: image,
      child: Positioned(
        bottom: 10,
        right: 10,
        child: BluredIconButton(radius: buttonSize),
      ),
    );
  }
}
