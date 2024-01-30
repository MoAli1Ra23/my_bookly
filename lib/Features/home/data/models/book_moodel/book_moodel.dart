import 'dart:convert';

import 'package:bookly/Features/home/domain/entities/book_entity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookMoodel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookMoodel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
            bookId: id,
            image: volumeInfo?.imageLinks?.thumbnail??"no name",
            title: volumeInfo!.title!,
            autherName: volumeInfo.authors!.first,
            price: 0.0,
            rateing: 4.4);

  factory BookMoodel.fromMap(Map<String, dynamic> data) => BookMoodel(
        kind: data['kind'] as String?,
        id: data['id'] as String?,
        etag: data['etag'] as String?,
        selfLink: data['selfLink'] as String?,
        volumeInfo: data['volumeInfo'] == null
            ? null
            : VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
        saleInfo: data['saleInfo'] == null
            ? null
            : SaleInfo.fromMap(data['saleInfo'] as Map<String, dynamic>),
        accessInfo: data['accessInfo'] == null
            ? null
            : AccessInfo.fromMap(data['accessInfo'] as Map<String, dynamic>),
        searchInfo: data['searchInfo'] == null
            ? null
            : SearchInfo.fromMap(data['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toMap(),
        'saleInfo': saleInfo?.toMap(),
        'accessInfo': accessInfo?.toMap(),
        'searchInfo': searchInfo?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookMoodel].
  factory BookMoodel.fromJson(String data) {
    return BookMoodel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BookMoodel] to a JSON string.
  String toJson() => json.encode(toMap());
}
