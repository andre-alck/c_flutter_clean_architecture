import 'package:flutter_clean_architecture/layers/data/datasources/local/get_computer_by_case_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_computer_by_case_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/computer_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_computer_by_case_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
      'given any value as computerCase should return instance of ComputerEntity',
      () {
    GetComputerByCaseRepository getComputerByCaseRepository =
        GetComputerByCaseRepositoryImp(
            getComputerByCaseDataSource: GetComputerByCaseLocalDataSourceImp());
    ComputerEntity computerEntity = getComputerByCaseRepository('');
    expect(computerEntity, isInstanceOf<ComputerEntity>());
  });

  test(
      'given java as computerCase\'s value should return gpu NVIDIA GeForce GTX 1050 Ti',
      () {
    GetComputerByCaseRepository getComputerByCaseRepository =
        GetComputerByCaseRepositoryImp(
            getComputerByCaseDataSource: GetComputerByCaseLocalDataSourceImp());
    final ComputerEntity computerEntity = getComputerByCaseRepository('java');
    expect(computerEntity.gpu, 'NVIDIA GeForce GTX 1050 Ti');
  });
}
