
import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter/material.dart';

abstract class HomeRemote {
  Future<List<BookEntity>> fetchBestSellers();
  Future<List<BookEntity>> fetchFeaturedBooksUseCase();
}




class HomeRemoteImpl extends HomeRemote {
  // This class will handle remote data fetching for the home feature.
  // It will interact with an API to fetch book data, best sellers, etc.
  late final ApiService apiService;

  // Example method to fetch best sellers
  Future<List<BookEntity>> fetchBestSellers() async {
    final data = await apiService.get(endPointUrl: 'volumes?Filtering=free-ebooks&q=programming');
    return getBooksList(data);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for(var bookMap in data['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
  
  @override
  Future<List<BookEntity>> fetchFeaturedBooksUseCase() async {
    final data = await apiService.get(
      endPointUrl: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming',
    );
    return getBooksList(data);
  }

  // Additional methods for fetching other data can be added here
}