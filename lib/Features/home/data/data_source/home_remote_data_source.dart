import 'package:bookly/Features/home/data/models/book_moodel/book_moodel.dart';
import 'package:bookly/core/utils/apiservice.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemotDateSource {
  Future<List<BookEntity>> fetchFeaturedbooks();
  Future<List<BookEntity>> fetchNewestbooks();
}

class HomeRepoImpl extends HomeRemotDateSource {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedbooks() async {
    var respons = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = formlistMapstoListBooks(respons);
    return books;
  }

  List<BookEntity> formlistMapstoListBooks(Map<String, dynamic> respons) {
    List<BookEntity> books = [];
    for (var element in respons['items']) {
      books.add(BookMoodel.fromMap(element));
    }
    return books;
  }

  ///volumes?Filtering=free-ebooks&Sorting=newest&q=programming
  @override
  Future<List<BookEntity>> fetchNewestbooks() async {
    var respons = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = formlistMapstoListBooks(respons);
    return books;
  }
}
