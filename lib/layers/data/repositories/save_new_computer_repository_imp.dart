import '../../domain/entities/computer_entity.dart';
import '../../domain/repositories/save_new_computer_repository.dart';

class SaveNewComputerRepositoryImp implements SaveNewComputerRepository {
  @override
  Future<bool> call(ComputerEntity computerEntity) async {
    return computerEntity.canRunOverwatch;
  }
}

// a implementação do repository está em data e seu contrato em domínio