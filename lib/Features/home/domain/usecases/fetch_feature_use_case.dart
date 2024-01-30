import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/use_case.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase implements UseCase<List<BookEntity>, NoParm> {
  final HomeRepo repo;

  FetchFeaturedBooksUseCase(this.repo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParm? parm]) async {
    return await repo.fetchFeaturedBooks();
  }
}
