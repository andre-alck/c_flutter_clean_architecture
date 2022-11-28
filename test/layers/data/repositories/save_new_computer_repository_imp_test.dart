import 'package:flutter_clean_architecture/layers/data/repositories/save_new_computer_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/computer_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_new_computer_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('given instance of computerEntity should return bool', () async {
    SaveNewComputerRepository saveNewComputerRepository =
        SaveNewComputerRepositoryImp();
    final ComputerEntity computerEntity = ComputerEntity(
      cpu: '',
      gpu: '',
      gigabytesOfRam: 0,
      gigabytesOfStorage: [],
    );
    final bool result = await saveNewComputerRepository(computerEntity);
    expect(result, isInstanceOf<bool>());
  });

  test('given specific gpu on computerEntity should return true', () async {
    SaveNewComputerRepository saveNewComputerRepository =
        SaveNewComputerRepositoryImp();
    final ComputerEntity computerEntity = ComputerEntity(
      cpu: '',
      gpu: 'NVIDIA GeForce GTX 1050 Ti',
      gigabytesOfRam: 0,
      gigabytesOfStorage: [],
    );
    final bool result = await saveNewComputerRepository(computerEntity);
    expect(result, true);
  });

  test('given empty gpu on computerEntity should return false', () async {
    SaveNewComputerRepository saveNewComputerRepository =
        SaveNewComputerRepositoryImp();
    final ComputerEntity computerEntity = ComputerEntity(
      cpu: '',
      gpu: '',
      gigabytesOfRam: 0,
      gigabytesOfStorage: [],
    );
    final bool result = await saveNewComputerRepository(computerEntity);
    expect(result, false);
  });
}
