import 'package:bookly/core/constant/app_colors.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/core/constant/routes.dart';
import 'package:bookly/features/home/presentation/widgets/book_list_view_item.dart';
import 'package:bookly/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              SizedBox(height: 30, child: HomeHeader()),
              SizedBox(height: 40),
              const FeaturedBooksListView(),
            ],
          ),
        ),
      ),
    );
  }
}
