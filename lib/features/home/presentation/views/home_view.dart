import 'package:bookly/core/constant/app_colors.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/core/constant/routes.dart';
import 'package:bookly/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
