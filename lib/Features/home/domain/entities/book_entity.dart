// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookEntity {
  final String? bookId;
  final String? image;
  final String title;
  final String autherName;
  final num? price;
  final num? rateing;
  BookEntity({
    required this.bookId,
    required this.image,
    required this.title,
    required this.autherName,
    required this.price,
    required this.rateing,
  });
}
