import '../../domain/entities/book_entity.dart';

abstract class HomeRemotDateSource {
  Future<List<BookEntity>> fetchFeaturedbooks();
  Future<List<BookEntity>> fetchNewestbooks();
}

class HomeRepoImpl extends HomeRemotDateSource {
  @override
  Future<List<BookEntity>> fetchFeaturedbooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestbooks() {
    throw UnimplementedError();
  }
}
