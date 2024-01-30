import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class UseCase<T, Parm> {
  Future<Either<Failure, T>> call([Parm parm]);
}

class NoParm {}
