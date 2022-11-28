import 'package:flutter_clean_architecture/layers/data/repositories/save_new_computer_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/computer_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_new_computer/save_new_computer_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_new_computer/save_new_computer_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('given 16 gigabytes of ram computer should be able to run overwatch',
      () async {
    SaveNewComputerUseCase useCase = SaveNewComputerUseCaseImp(
        saveNewComputerRepository: SaveNewComputerRepositoryImp());

    final ComputerEntity computerEntity = ComputerEntity(
      cpu: 'i7',
      gpu: '1050',
      gigabytesOfRam: 16,
      gigabytesOfStorage: [1000],
    );

    final bool result = await useCase(computerEntity);
    expect(result, true);
  });

  test('given empty gpu computer should not be able to run overwatch',
      () async {
    SaveNewComputerUseCase useCase = SaveNewComputerUseCaseImp(
        saveNewComputerRepository: SaveNewComputerRepositoryImp());

    final ComputerEntity computerEntity = ComputerEntity(
      cpu: 'i7',
      gpu: '',
      gigabytesOfRam: 16,
      gigabytesOfStorage: [1000],
    );

    final bool result = await useCase(computerEntity);
    expect(result, false);
  });
}
