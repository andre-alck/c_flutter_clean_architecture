import 'package:dartz/dartz.dart';

import '../../entities/computer_entity.dart';

abstract class GetComputerByCaseUseCase {
  Either<Exception, ComputerEntity> call(String computerCase);
}
