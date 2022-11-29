import 'package:dartz/dartz.dart';

import '../entities/computer_entity.dart';

abstract class GetComputerByCaseRepository {
  Either<Exception, ComputerEntity> call(String computerCase);
}
