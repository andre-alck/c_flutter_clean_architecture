import 'package:flutter_clean_architecture/layers/data/repositories/get_computer_by_case_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/computer_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_computer_by_case/get_computer_by_case_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_computer_by_case/get_computer_by_case_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('instance of ComputerEntity should not be null', () {
    GetComputerByCaseUseCase usecase = GetComputerByCaseUseCaseImp(
        getComputerByCaseRepository: GetComputerByCaseRepositoryImp());
    final ComputerEntity computerEntity = usecase('');
    expect(computerEntity, isInstanceOf<ComputerEntity>());
  });

  test('given java for pc case should return specific cpu', () {
    GetComputerByCaseUseCase usecase = GetComputerByCaseUseCaseImp(
        getComputerByCaseRepository: GetComputerByCaseRepositoryImp());
    final ComputerEntity computerEntity = usecase('java');
    expect(
        computerEntity.cpu, 'Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz 2.70 GHz');
  });
}
