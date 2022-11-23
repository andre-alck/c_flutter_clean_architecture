class CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valor;

  CarroEntity(
      {required this.placa,
      required this.quantidadeDePortas,
      required this.valor});

  double get valorReal {
    return valor * quantidadeDePortas;
  }

  void ajustaPreco() {
    if (valor > 10000.0) {
      valor *= 2;
    }
  }
}
