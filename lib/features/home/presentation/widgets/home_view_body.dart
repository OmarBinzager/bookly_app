import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/text_styles.dart';
import 'package:bookly/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              SizedBox(height: 30, child: HomeHeader()),
              SizedBox(height: 40),
              const FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSpacing.pageHoirzontalPadding,
                  right: AppSpacing.pageHoirzontalPadding,
                  top: 35,
                  bottom: 20,
                ),
                child: Text('Best Seller', style: TextStyles.semiBold18),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.pageHoirzontalPadding,
            ),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
