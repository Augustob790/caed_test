import 'package:flutter_modular/flutter_modular.dart';
import 'package:caed/app/modules/auth/pages/login/login_page.dart';

class AuthModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      transition: TransitionType.fadeIn,
      child: (context, args) => const LoginPage(),
    ),
  ];
}
