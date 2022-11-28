import '../../domain/entities/computer_entity.dart';

class ComputerDto extends ComputerEntity {
  final String cpu;
  final String gpu;
  final int gigabytesOfRam;
  final List<int> gigabytesOfStorage;

  ComputerDto(
      {required this.cpu,
      required this.gpu,
      required this.gigabytesOfRam,
      required this.gigabytesOfStorage})
      : super(
            cpu: cpu,
            gpu: gpu,
            gigabytesOfRam: gigabytesOfRam,
            gigabytesOfStorage: gigabytesOfStorage);

  Map<String, dynamic> toJson() {
    return {
      'cpu': cpu,
      'gpu': gpu,
      'gigabytesOfRam': gigabytesOfRam,
      'gigabytesOfStorage': gigabytesOfStorage,
    };
  }

  ComputerDto fromJson(Map<String, dynamic> map) {
    return ComputerDto(
        cpu: map['cpu'],
        gpu: map['gpu'],
        gigabytesOfRam: map['gigabytesOfRam'],
        gigabytesOfStorage: map['gigabytesOfStorage']);
  }
}
