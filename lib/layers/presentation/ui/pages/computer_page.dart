import 'package:flutter/material.dart';

import '../../../data/datasources/local/get_computer_by_case_local_datasource_imp.dart';
import '../../../data/repositories/get_computer_by_case_repository_imp.dart';
import '../../../data/repositories/save_new_computer_repository_imp.dart';
import '../../../domain/usecases/get_computer_by_case/get_computer_by_case_usecase_imp.dart';
import '../../../domain/usecases/save_new_computer/save_new_computer_usecase_imp.dart';
import '../../controllers/computer_controller.dart';

class ComputerPage extends StatelessWidget {
  final ComputerController computerController = ComputerController(
      getComputerByCaseUseCase: GetComputerByCaseUseCaseImp(
          getComputerByCaseRepository: GetComputerByCaseRepositoryImp(
              getComputerByCaseDataSource:
                  GetComputerByCaseLocalDataSourceImp())),
      saveNewComputerUseCase: SaveNewComputerUseCaseImp(
          saveNewComputerRepository: SaveNewComputerRepositoryImp()));

  ComputerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Text(computerController.computerEntity.gpu),
      ),
    );
  }
}
