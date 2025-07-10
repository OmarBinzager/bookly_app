


import 'package:bookly/features/home/domain/entities/home_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}