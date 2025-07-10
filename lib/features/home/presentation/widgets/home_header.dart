import 'package:bookly/core/constant/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(FixedAssets.logo, fit: BoxFit.contain, width: 80),
          const Icon(FontAwesomeIcons.magnifyingGlass, size: 23),
        ],
      ),
    );
  }
}
