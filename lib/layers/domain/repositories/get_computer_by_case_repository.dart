import '../entities/computer_entity.dart';

abstract class GetComputerByCaseRepository {
  ComputerEntity call(String computerCase);
}
