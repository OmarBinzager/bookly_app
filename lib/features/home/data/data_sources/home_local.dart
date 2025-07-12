


import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeLocal {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeRemoteImpl extends HomeLocal {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    return [];
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    return [];
  }

}