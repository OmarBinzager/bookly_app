import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsHeader extends StatelessWidget {
  const BookDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.pageHoirzontalPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.pushNamed(Routes.home),
            child: const Icon(Icons.close, size: 23,
            ),
          ),
          const Icon(Icons.shopping_cart_outlined, size: 23),
        ],
      ),
    );
  }
}
