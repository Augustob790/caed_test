import 'package:caed/app/modules/auth/auth_module.dart';
import 'package:caed/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [HomeModule()];

  // @override
  // final List<Bind> binds = [
  //   Bind.singleton((i) => HomeRepository()),
  //   Bind.singleton((i) => HomeUseCases(homeRepository: i())),
  // ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: AuthModule()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
