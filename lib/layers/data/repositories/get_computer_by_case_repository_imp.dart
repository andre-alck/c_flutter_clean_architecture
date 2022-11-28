import '../../domain/entities/computer_entity.dart';
import '../../domain/repositories/get_computer_by_case_repository.dart';
import '../dtos/computer_dto.dart';

class GetComputerByCaseRepositoryImp implements GetComputerByCaseRepository {
  @override
  ComputerEntity call(String computerCase) {
    // mock: simula-se que api retornou json (apiMap)
    final Map<String, dynamic> apiMap = {
      'cpu': 'Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz 2.70 GHz',
      'gpu': 'NVIDIA GeForce GTX 1050 Ti',
      'gigabytesOfRam': 16,
      'gigabytesOfStorage': [500, 1000]
    };

    final ComputerDto computerDto = ComputerDto(
        cpu: apiMap['cpu'],
        gpu: apiMap['gpu'],
        gigabytesOfRam: apiMap['gigabytesOfRam'],
        gigabytesOfStorage: apiMap['gigabytesOfStorage']);

    return computerDto;
  }
}
