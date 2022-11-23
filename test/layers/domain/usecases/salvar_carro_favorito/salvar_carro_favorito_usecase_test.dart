import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/layers/domain/entities/carro_entity.dart';
import 'package:github_search/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:github_search/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:github_search/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    final CarroEntity carroEntity =
        CarroEntity(placa: 'placa', quantidadeDePortas: 2, valor: 1.0);

    final result = await useCase(carroEntity);

    expect(result, true);
  });

  test('Espero que não salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    final CarroEntity carroEntity =
        CarroEntity(placa: 'placa', quantidadeDePortas: 2, valor: 0);

    final result = await useCase(carroEntity);

    expect(result, false);
  });
}
