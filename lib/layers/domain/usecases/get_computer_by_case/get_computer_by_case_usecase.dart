import '../../entities/computer_entity.dart';

abstract class GetComputerByCaseUseCase {
  ComputerEntity call(String computerCase);
}
