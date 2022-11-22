import 'package:flutter_tdd_clean_architecture_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late NumberTrivia numberTrivia1;
  late NumberTrivia numberTrivia2;

  group('equatable', () {
    test(
        'Given 2 different objects with same properties When compare them Then they should be the same',
        () {
      numberTrivia1 = const NumberTrivia(text: 'text', number: 1);
      numberTrivia2 = const NumberTrivia(text: 'text', number: 1);

      expect(identical(numberTrivia1, numberTrivia2), true);
      expect(numberTrivia1 == numberTrivia2, true);
    });

    test(
        'Given 2 different object with different properties When compare them Then they should be different',
        () {
      numberTrivia1 = const NumberTrivia(text: 'text', number: 1);
      numberTrivia2 = const NumberTrivia(text: 'different text', number: 2);

      expect(identical(numberTrivia1, numberTrivia2), false);
      expect(numberTrivia1 == numberTrivia2, false);
    });
  });
}
