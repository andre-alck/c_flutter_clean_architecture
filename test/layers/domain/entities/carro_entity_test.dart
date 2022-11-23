import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/layers/domain/entities/carro_entity.dart';

void main() {
  CarroEntity carroEntity =
      CarroEntity(placa: 'ABC-1234', quantidadeDePortas: 4, valor: 10000.0);

  test('Espero que entidade não seja nula', () {
    expect(carroEntity, isNotNull);
  });

  test('Espero que a placa seja ABC-1234', () {
    expect(carroEntity.placa, 'ABC-1234');
  });

  test('Espero que a quantidade de portas seja 4', () {
    expect(carroEntity.quantidadeDePortas, 4);
  });

  test('Espero que o valor seja 10000', () {
    expect(carroEntity.valor, 10000);
  });

  test('Espero que o valor seja o dobro do fornecido', () {
    const valorOriginalDoCarro = 10000.1;

    CarroEntity carroEntity = CarroEntity(
        placa: 'XYZ-9876', quantidadeDePortas: 4, valor: valorOriginalDoCarro);

    carroEntity.ajustaPreco();

    expect(carroEntity.valor, valorOriginalDoCarro * 2);
  });
}
