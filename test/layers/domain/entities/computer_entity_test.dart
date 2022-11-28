import 'package:flutter_clean_architecture/layers/domain/entities/computer_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('computerEntity should not be null', () {
    final ComputerEntity computerEntity = ComputerEntity(
      cpu: 'cpu',
      gpu: 'gpu',
      gigabytesOfRam: 0,
      gigabytesOfStorage: [],
    );

    expect(computerEntity, isNotNull);
  });

  group('Complete ComputerEntity', () {
    final ComputerEntity computerEntity = ComputerEntity(
      cpu: 'i5-6400',
      gpu: 'GTX 1050 Ti',
      gigabytesOfRam: 8,
      gigabytesOfStorage: [250, 500],
    );

    test('computerEntity\'s cpu should return i5-6400', () {
      expect(computerEntity.cpu, 'i5-6400');
    });

    test('computerEntity\'s cpu should return GTX 1050 Ti', () {
      expect(computerEntity.gpu, 'GTX 1050 Ti');
    });

    test('computerEntity\'s gigabytesOfRam should return 8', () {
      expect(computerEntity.gigabytesOfRam, 8);
    });

    test('computerEntity\'s gigabytesOfStorage should return [250, 500]', () {
      expect(computerEntity.gigabytesOfStorage, [250, 500]);
    });

    test('given computerEntity\'s fields, it should be able to run Overwatch',
        () {
      expect(computerEntity.canRunOverwatch, true);
    });
  });

  group('Incomplete ComputerEntity', () {
    final ComputerEntity incompleteComputerEntity = ComputerEntity(
      cpu: '',
      gpu: '',
      gigabytesOfRam: 0,
      gigabytesOfStorage: [],
    );

    test('computerEntity\'s cpu should be  empty', () {
      expect(incompleteComputerEntity.cpu.isEmpty, true);
    });

    test('computerEntity\'s cpu should be empty', () {
      expect(incompleteComputerEntity.gpu.isEmpty, true);
    });

    test('computerEntity\'s gigabytesOfRam should be 0', () {
      expect(incompleteComputerEntity.gigabytesOfRam, 0);
    });

    test('computerEntity\'s gigabytesOfStorage should return [250, 500]', () {
      expect(incompleteComputerEntity.gigabytesOfStorage.isEmpty, true);
    });

    test(
        'given incomplete gpu on computerEntity\'s fields, it should not be able to run Overwatch',
        () {
      expect(incompleteComputerEntity.canRunOverwatch, false);
    });
  });
}
