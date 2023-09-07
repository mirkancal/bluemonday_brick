import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value as R;
  L asLeft() => (this as Left).value as L;
}
