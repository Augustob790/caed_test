import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:caed/app_module.dart';
import 'package:caed/app_widgets.dart';
import 'package:caed/core/provider/get_it_injector.dart';

void main() {
  setupProviders();
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}



