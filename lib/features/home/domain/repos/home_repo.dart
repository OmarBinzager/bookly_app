

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}