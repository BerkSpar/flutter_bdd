import 'package:flutter_bdd/app/app_store.dart';
import 'package:flutter_bdd/app/modules/authentication/authentication_module.dart';
import 'package:flutter_bdd/app/modules/home/home_module.dart';
import 'package:flutter_bdd/app/modules/onboard/onboard_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// AppModule is the main module of the application.
///
/// It is responsible for providing the main dependencies of the application.
class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute<ModularRoute>(
      Modular.initialRoute,
      module: OnboardModule(),
    ),
    ModuleRoute<ModularRoute>(
      '/auth',
      module: AuthenticationModule(),
    ),
    ModuleRoute<ModularRoute>(
      '/home',
      module: HomeModule(),
    ),
  ];
}
