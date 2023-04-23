import 'package:flutter_bdd/app/modules/home/pages/home/home_page.dart';
import 'package:flutter_bdd/app/modules/home/pages/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// HomeModule is the module responsible for the Home feature.
///
/// It is responsible for providing the dependencies of the Home feature.
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<ModularRoute>(
      '/',
      child: (_, args) => const HomePage(),
    ),
  ];
}
