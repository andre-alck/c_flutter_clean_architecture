import '../../entities/carro_entity.dart';
import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('cinza')) {
      return CarroEntity(
          placa: 'ABC1234', quantidadeDePortas: 4, valor: 15000.0);
    }

    return CarroEntity(placa: 'ABC1234', quantidadeDePortas: 2, valor: 15000.0);
  }
}
