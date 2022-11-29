import 'package:dartz/dartz.dart';

import '../../dtos/computer_dto.dart';
import '../get_computer_by_case_datasource.dart';

class GetComputerByCaseLocalDataSourceImp
    implements GetComputerByCaseDataSource {
  final Map<String, dynamic> mapFromApiContainingFirstComputer = {
    'cpu': 'Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz 2.70 GHz',
    'gpu': 'NVIDIA GeForce GTX 1050 Ti',
    'gigabytesOfRam': 16,
    'gigabytesOfStorage': [500, 1000]
  };

  final Map<String, dynamic> mapFromApiContainingSecondComputer = {
    'cpu': 'Intel(R) Core(TM) i7-6400 CPU @ 2.70GHz 2.70 GHz',
    'gpu': '',
    'gigabytesOfRam': 8,
    'gigabytesOfStorage': [500]
  };

  @override
  Either<Exception, ComputerDto> call(String computerCase) {
    try {
      if (computerCase == 'java') {
        return Right(ComputerDto.fromJson(mapFromApiContainingFirstComputer));
      }
      return Right(ComputerDto.fromJson(mapFromApiContainingSecondComputer));
    } catch (e) {
      return Left(Exception('Error in GetComputerByCaseLocalDataSourceImp'));
    }
  }
}
