import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_computer_by_case_repository.dart';

import '../../entities/computer_entity.dart';
import 'get_computer_by_case_usecase.dart';

class GetComputerByCaseUseCaseImp implements GetComputerByCaseUseCase {
  final GetComputerByCaseRepository _getComputerByCaseRepository;

  GetComputerByCaseUseCaseImp(
      {required GetComputerByCaseRepository getComputerByCaseRepository})
      : _getComputerByCaseRepository = getComputerByCaseRepository;

  @override
  Either<Exception, ComputerEntity> call(String computerCase) {
    return _getComputerByCaseRepository(computerCase);
  }
}
