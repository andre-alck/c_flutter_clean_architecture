import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_clean_architecture_course/core/error/failures.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/entities/number_trivia.dart';

import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberTrivia({required this.numberTriviaRepository});

  Future<Either<Failure, NumberTrivia>> execute({required int number}) {
    return numberTriviaRepository.getConcreteNumberTrivia(number: number);
  }
}
