import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/widgets/book_item_card.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  static const List<BookEntity> books = [
    BookEntity(
      image: FixedAssets.book3, 
      title: 'Harry Potter and the Goblet of Fire', 
      authorName: 'Om. Binzager', 
      price: 19.99, 
      rating: 4.5, 
      rateCount: 4032, bookId: '1'),
    BookEntity(
      image: FixedAssets.book2, 
      title: 'Harry Potter and the Goblet of Fire', 
      authorName: 'Om. Bahady', 
      price: 19.99, 
      rating:  4.5, 
      rateCount: 4032, bookId: '2'),
  ];

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
