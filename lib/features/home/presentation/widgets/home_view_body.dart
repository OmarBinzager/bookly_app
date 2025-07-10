import 'package:bookly/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            SizedBox(height: 30, child: HomeHeader()),
      
          ],
        ),
      ),
    );
  }
}
