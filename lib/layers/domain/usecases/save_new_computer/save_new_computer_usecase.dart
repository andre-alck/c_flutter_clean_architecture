import '../../entities/computer_entity.dart';

abstract class SaveNewComputerUseCase {
  Future<bool> call(ComputerEntity computerEntity);
}
