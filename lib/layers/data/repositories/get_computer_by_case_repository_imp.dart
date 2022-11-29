import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/get_computer_by_case_datasource.dart';

import '../../domain/entities/computer_entity.dart';
import '../../domain/repositories/get_computer_by_case_repository.dart';

class GetComputerByCaseRepositoryImp implements GetComputerByCaseRepository {
  final GetComputerByCaseDataSource _getComputerByCaseDataSource;

  GetComputerByCaseRepositoryImp(
      {required GetComputerByCaseDataSource getComputerByCaseDataSource})
      : _getComputerByCaseDataSource = getComputerByCaseDataSource;

  @override
  Either<Exception, ComputerEntity> call(String computerCase) {
    return _getComputerByCaseDataSource(computerCase);
  }
}
