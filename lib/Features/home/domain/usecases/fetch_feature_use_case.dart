import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo repo;

  FetchFeaturedBooksUseCase(this.repo);
    Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
      return await repo.fetchFeaturedBooks();
    }

}