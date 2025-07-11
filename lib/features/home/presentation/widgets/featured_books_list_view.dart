import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/features/home/presentation/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BooksListViewItem(image: FixedAssets.book1),
          BooksListViewItem(image: FixedAssets.book2),
          BooksListViewItem(image: FixedAssets.book3),
          BooksListViewItem(image: FixedAssets.book4),
          BooksListViewItem(image: FixedAssets.book5),
          BooksListViewItem(image: FixedAssets.book6),
        ],
      ),
    );
  }
}
