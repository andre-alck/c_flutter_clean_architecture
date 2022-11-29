import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/computer_controller.dart';

class ComputerPage extends StatelessWidget {
  final ComputerController computerController =
      GetIt.I.get<ComputerController>();

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
