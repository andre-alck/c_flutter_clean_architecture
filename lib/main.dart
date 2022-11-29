import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/inject/inject.dart';
import 'package:flutter_clean_architecture/layers/presentation/ui/pages/computer_page.dart';

void main() {
  Inject.init();
  runApp(
    MaterialApp(
      home: ComputerPage(),
    ),
  );
}
