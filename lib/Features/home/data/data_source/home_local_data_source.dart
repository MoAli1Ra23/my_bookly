import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDateSource {
  List<BookEntity> fetchFeaturedbooks();
  List<BookEntity> fetchNewestbooks();
}

class HomeLocalDateSourceImpl extends HomeLocalDateSource {
  @override
  List<BookEntity> fetchFeaturedbooks() {
    // TODO: implement fetchFeaturedbooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestbooks() {
    // TODO: implement fetchNewestbooks
    throw UnimplementedError();
  }
}
