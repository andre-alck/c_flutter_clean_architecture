import '../dtos/computer_dto.dart';

abstract class GetComputerByCaseDataSource {
  ComputerDto call(String computerCase);
}
