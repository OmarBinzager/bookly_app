import 'package:bookly/core/constant/assets.dart';
import 'package:bookly/core/constant/routes.dart';
import 'package:bookly/core/constant/text_styles.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/widgets/image_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItemCard extends StatelessWidget {
  const BookItemCard({super.key, required this.book});
  final BookEntity book; // Assuming a default image for the book
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.bookDetails, extra: book);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            ImageBox(image: book.image, aspectRatio: 2.2 / 3, borderRadius: 8),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    book.title,
                    style: TextStyles.medium20.copyWith(
                      fontFamily: TextStyles.gtSectraFineFont,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 3),
                  Text(book.authorName, style: TextStyles.greyMedium16),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${book.price} \$', style: TextStyles.bold20),
                      BookRating(
                        rate: '${book.rating}',
                        rateCount: '${book.rateCount}',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rate,
    required this.rateCount,
    this.alignment = MainAxisAlignment.start,
  });

  final String rate;
  final String rateCount;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Icon(Icons.star_rounded, color: Colors.yellow),
        Text(rate, style: TextStyles.semiBold18),
        SizedBox(width: 5),
        Text('($rateCount)', style: TextStyles.greyMedium16),
      ],
    );
  }
}
