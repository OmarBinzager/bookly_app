



import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchFeatureBooks();
  }
}