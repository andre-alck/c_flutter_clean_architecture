import '../../entities/carro_entity.dart';
import '../../repositories/salvar_carro_favorito_repository.dart';
import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.ajustaPreco();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
