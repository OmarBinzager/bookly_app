import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BooksDetailView extends StatelessWidget {
  const BooksDetailView({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BooksDetailsViewBody(book:book)),
    );
  }
}