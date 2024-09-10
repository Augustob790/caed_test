import 'package:caed/app/modules/auth/auth_module.dart';
import 'package:caed/app/modules/home/features/domain/home_usecases.dart';
import 'package:caed/app/modules/home/features/repositories/home_repository.dart';
import 'package:caed/app/modules/home/home_module.dart';
import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [HomeModule()];

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeRepository()),
    Bind.singleton((i) => HomeUseCases(homeRepository: i())),
    Bind.lazySingleton((i) => HomeStateStore(homeUseCases: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: AuthModule()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
