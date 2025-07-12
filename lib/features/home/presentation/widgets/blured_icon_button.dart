import 'dart:ui';

import 'package:flutter/material.dart';

class BluredIconButton extends StatelessWidget {
  const BluredIconButton({super.key, this.icon = Icons.play_arrow, this.radius = 40});
  final IconData icon;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: radius,
          height: radius,
          padding: const EdgeInsets.all(8.0),
          color: Colors.white.withOpacity(0.2),
          child: Icon(icon),
        ),
      ),
    );
  }
}
