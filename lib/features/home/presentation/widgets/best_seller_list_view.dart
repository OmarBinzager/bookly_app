import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/widgets/book_item_card.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  static const List<BookEntity> books = [
    BookEntity(
      FixedAssets.book3, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Binzager', 
      19.99, 
      4.5, 
      4032),
    BookEntity(
      FixedAssets.book2, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Bahady', 
      19.99, 
      4.5, 
      4032),
    BookEntity(
      FixedAssets.book1, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Binzager', 
      19.99, 
      4.5, 
      4032),
    BookEntity(
      FixedAssets.book4, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Binzager', 
      19.99, 
      4.5, 
      4032),
    BookEntity(
      FixedAssets.book5, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Binzager', 
      19.99, 
      4.5, 
      4032),
    BookEntity(
      FixedAssets.book6, 
      'Harry Potter and the Goblet of Fire', 
      'Om. Binzager', 
      19.99, 
      4.5, 
      4032),
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
