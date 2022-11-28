import '../entities/computer_entity.dart';

abstract class SaveNewComputerRepository {
  Future<bool> call(ComputerEntity computerEntity);
}
