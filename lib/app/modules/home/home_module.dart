import 'package:flutter_modular/flutter_modular.dart';
import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStateStore(homeUseCases: i()), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/home-page",
      transition: TransitionType.fadeIn,
      child: (context, args) => const HomePage(),
    ),
  ];
}
