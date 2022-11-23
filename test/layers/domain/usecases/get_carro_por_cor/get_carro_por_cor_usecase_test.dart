import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/layers/domain/entities/carro_entity.dart';
import 'package:github_search/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:github_search/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

void main() {
  test('Deve retornar uma instância de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final CarroEntity result = getCarrosPorCorUseCase('qualquer cor!');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test(
      'Deve retornar uma instância de CarroEntity com quantidadeDePortas igual a 2 quando cor for diferente de cinza',
      () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final CarroEntity result = getCarrosPorCorUseCase('vermelho');
    expect(result.quantidadeDePortas, 2);
  });

  test(
      'Deve retornar uma instância de CarroEntity com quantidadeDePortas igual a 4 quando cor for igual a cinza',
      () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final CarroEntity result = getCarrosPorCorUseCase('cinza');
    expect(result.quantidadeDePortas, 4);
  });
}
