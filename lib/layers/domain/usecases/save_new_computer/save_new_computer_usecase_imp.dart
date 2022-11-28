import '../../entities/computer_entity.dart';
import '../save_new_computer/save_new_computer_usecase.dart';
import '../../repositories/save_new_computer_repository.dart';

class SaveNewComputerUseCaseImp implements SaveNewComputerUseCase {
  final SaveNewComputerRepository _saveNewComputerRepository;

  SaveNewComputerUseCaseImp(
      {required SaveNewComputerRepository saveNewComputerRepository})
      : _saveNewComputerRepository = saveNewComputerRepository;

  @override
  Future<bool> call(ComputerEntity computerEntity) async {
    if (!computerEntity.canRunOverwatch) {
      return false;
    }

    bool isNewComputerSaved = await _saveNewComputerRepository(computerEntity);
    return isNewComputerSaved;
  }
}
