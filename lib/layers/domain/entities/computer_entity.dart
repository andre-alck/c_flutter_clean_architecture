class ComputerEntity {
  final String cpu;
  final String gpu;
  final int gigabytesOfRam;
  final List<int> gigabytesOfStorage;

  ComputerEntity(
      {required this.cpu,
      required this.gpu,
      required this.gigabytesOfRam,
      required this.gigabytesOfStorage});

  bool get canRunOverwatch {
    return gpu != "";
  }
}
