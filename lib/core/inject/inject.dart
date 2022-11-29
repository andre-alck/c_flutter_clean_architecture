import 'package:get_it/get_it.dart';

import '../../layers/data/datasources/get_computer_by_case_datasource.dart';
import '../../layers/data/datasources/local/get_computer_by_case_local_datasource_imp.dart';
import '../../layers/data/repositories/get_computer_by_case_repository_imp.dart';
import '../../layers/data/repositories/save_new_computer_repository_imp.dart';
import '../../layers/domain/repositories/get_computer_by_case_repository.dart';
import '../../layers/domain/repositories/save_new_computer_repository.dart';
import '../../layers/domain/usecases/get_computer_by_case/get_computer_by_case_usecase.dart';
import '../../layers/domain/usecases/get_computer_by_case/get_computer_by_case_usecase_imp.dart';
import '../../layers/domain/usecases/save_new_computer/save_new_computer_usecase.dart';
import '../../layers/domain/usecases/save_new_computer/save_new_computer_usecase_imp.dart';
import '../../layers/presentation/controllers/computer_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<GetComputerByCaseDataSource>(
        () => GetComputerByCaseLocalDataSourceImp());

    getIt.registerLazySingleton<GetComputerByCaseRepository>(() =>
        GetComputerByCaseRepositoryImp(getComputerByCaseDataSource: getIt()));
    getIt.registerLazySingleton<SaveNewComputerRepository>(
        () => SaveNewComputerRepositoryImp());

    getIt.registerLazySingleton<GetComputerByCaseUseCase>(() =>
        GetComputerByCaseUseCaseImp(getComputerByCaseRepository: getIt()));
    getIt.registerLazySingleton<SaveNewComputerUseCase>(
        () => SaveNewComputerUseCaseImp(saveNewComputerRepository: getIt()));

    getIt.registerFactory<ComputerController>(() => ComputerController(
        getComputerByCaseUseCase: getIt(), saveNewComputerUseCase: getIt()));
  }
}
