import '../../domain/usecases/get_computer_by_case/get_computer_by_case_usecase.dart';
import '../../domain/usecases/save_new_computer/save_new_computer_usecase.dart';
import '../../domain/entities/computer_entity.dart';

class ComputerController {
  final GetComputerByCaseUseCase _getComputerByCaseUseCase;
  final SaveNewComputerUseCase _saveNewComputerUseCase;

  late ComputerEntity computerEntity;

  ComputerController(
      {required GetComputerByCaseUseCase getComputerByCaseUseCase,
      required SaveNewComputerUseCase saveNewComputerUseCase})
      : _getComputerByCaseUseCase = getComputerByCaseUseCase,
        _saveNewComputerUseCase = saveNewComputerUseCase {
    getComputerByCase('java');
  }

  getComputerByCase(String computerCase) {
    computerEntity = _getComputerByCaseUseCase(computerCase);
  }

  saveNewComputer(ComputerEntity computerEntity) async {
    bool newComputerHasBeenSaved =
        await _saveNewComputerUseCase(computerEntity);
  }
}
