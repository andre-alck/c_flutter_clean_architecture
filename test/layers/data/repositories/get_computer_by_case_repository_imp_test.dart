import 'package:dartz/dartz.dart';
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
    final Either<Exception, ComputerEntity> result =
        getComputerByCaseRepository('java');
    late ComputerEntity computerEntity;
    result.fold((error) => null, (success) => computerEntity = success);
    expect(computerEntity, isInstanceOf<ComputerEntity>());
  });

  test(
      'given java as computerCase\'s value should return gpu NVIDIA GeForce GTX 1050 Ti',
      () {
    GetComputerByCaseRepository getComputerByCaseRepository =
        GetComputerByCaseRepositoryImp(
            getComputerByCaseDataSource: GetComputerByCaseLocalDataSourceImp());

    final Either<Exception, ComputerEntity> result =
        getComputerByCaseRepository('java');
    late ComputerEntity computerEntity;
    result.fold((error) => null, (success) => computerEntity = success);

    expect(computerEntity.gpu, 'NVIDIA GeForce GTX 1050 Ti');
  });
}
