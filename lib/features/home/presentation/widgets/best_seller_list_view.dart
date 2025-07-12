import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/widgets/book_item_card.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder:
          (context, i) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: BookItemCard(book: books[i],),
          ),
    );
  }
}
