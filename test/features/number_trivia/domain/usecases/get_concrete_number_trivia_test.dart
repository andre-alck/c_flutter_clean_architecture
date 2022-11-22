import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_clean_architecture_course/core/error/failures.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(
        numberTriviaRepository: mockNumberTriviaRepository);
  });

  const int tNumber = 1;
  const NumberTrivia tNumberTrivia = NumberTrivia(number: 1, text: 'text');

  test('', () async {
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(number: tNumber))
        .thenAnswer((realInvocation) async => const Right(tNumberTrivia));

    final Either<Failure, NumberTrivia> result =
        await usecase.execute(number: tNumber);

    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(number: tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
