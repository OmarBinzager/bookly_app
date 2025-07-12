import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/features/home/presentation/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, this.height});

  final double? height;
  @override
  Widget build(BuildContext context) {
    final finalHight = height ?? MediaQuery.of(context).size.height * .27;
    return SizedBox(
      height: finalHight,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BooksListViewItem(image: FixedAssets.book1, parentHight: finalHight,),
          BooksListViewItem(image: FixedAssets.book2, parentHight: finalHight),
          BooksListViewItem(image: FixedAssets.book3, parentHight: finalHight),
          BooksListViewItem(image: FixedAssets.book4, parentHight: finalHight),
          BooksListViewItem(image: FixedAssets.book5, parentHight: finalHight),
          BooksListViewItem(image: FixedAssets.book6, parentHight: finalHight),
        ],
      ),
    );
  }
}
