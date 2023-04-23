import 'package:flutter_bdd/app/modules/onboard/pages/onboard/onboard_page.dart';
import 'package:flutter_bdd/app/modules/onboard/pages/onboard/onboard_store.dart';
import 'package:flutter_bdd/app/modules/onboard/pages/splash/splash_page.dart';
import 'package:flutter_bdd/app/modules/onboard/pages/splash/splash_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// OnboardModule is the module responsible for the Onboard feature.
///
/// It is responsible for providing the dependencies of the Onboard feature.
class OnboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore()),
    Bind.lazySingleton((i) => OnboardStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<ModularRoute>(
      '/',
      child: (_, args) => const SplashPage(),
    ),
    ChildRoute<ModularRoute>(
      '/onboard',
      child: (_, args) => const OnboardPage(),
    ),
  ];
}
