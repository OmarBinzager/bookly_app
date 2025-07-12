import 'package:bookly/core/constant/app_spacing.dart';
import 'package:bookly/core/constant/text_styles.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/widgets/book_details_header.dart';
import 'package:bookly/features/home/presentation/widgets/book_item_card.dart';
import 'package:bookly/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/widgets/image_box.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.book});

  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.pageHoirzontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          BookDetailsHeader(),
          SizedBox(height: 25),
          _bookInfoWidgets(context),
          SizedBox(height: 20),
          _freePreviewAndPriceButton(),
          SizedBox(height: 20),
          Text(
            'You also may like',
            style: TextStyles.semiBold18,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15,),
          FeaturedBooksListView(height: MediaQuery.of(context).size.height * .15,)
        ],
      ),
    );
  }

  Column _bookInfoWidgets(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
          height: MediaQuery.of(context).size.height * .325,
          child: Hero(
            tag: book.bookId,
            transitionOnUserGestures: true,
            child: ImageBox(image: book.image, borderRadius: 16)),
        ),
        SizedBox(height: 30),
        Text(
          book.title,
          style: TextStyles.bold24.copyWith(
            fontFamily: TextStyles.gtSectraFineFont,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 4),
        Text(
          book.authorName,
          style: TextStyles.greyMedium18,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        BookRating(
          rate: book.rating.toString(),
          rateCount: book.rateCount.toString(),
          alignment: MainAxisAlignment.center,
        ),
          ],
        );
  }

  Row _freePreviewAndPriceButton() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 160,
              height: 60,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Text(
                '${book.price} \$',
                style: TextStyles.bold20.copyWith(color: Colors.black),
              ),
            ),
            Container(
              width: 160,
              height: 60,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Text('Free preview', style: TextStyles.bold20),
            ),
          ],
        );
  }
}
