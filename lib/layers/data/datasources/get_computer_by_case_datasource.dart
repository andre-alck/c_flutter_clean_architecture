import 'package:dartz/dartz.dart';

import '../dtos/computer_dto.dart';

abstract class GetComputerByCaseDataSource {
  Either<Exception, ComputerDto> call(String computerCase);
}
