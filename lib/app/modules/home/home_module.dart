import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/details/details_page.dart';
import 'package:caed/app/modules/home/pages/home/home_page.dart';
import 'package:caed/app/modules/home/pages/package_list/package_list_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    ChildRoute(
      "/tab-page",
      transition: TransitionType.fadeIn,
      child: (context, args) => const PackageListPage(),
    ),
    ChildRoute(
      "/details-page",
      transition: TransitionType.fadeIn,
      child: (context, args) =>  DetailsPage(
        index: args.data['index'] as int,
        cod: args.data['cod'] as String,
      ),
    ),
  ];
}
