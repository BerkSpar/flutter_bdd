import 'package:flutter_bdd/app/modules/authentication/pages/register/register_page.dart';
import 'package:flutter_bdd/app/modules/authentication/pages/register/register_store.dart';
import 'package:flutter_bdd/app/modules/authentication/pages/signin/signin_page.dart';
import 'package:flutter_bdd/app/modules/authentication/pages/signin/signin_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// AuthenticationModule is the module responsible for the
/// Authentication feature.
///
/// It is responsible for providing the dependencies of the
/// Authentication feature.
class AuthenticationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => SigninStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<ModularRoute>(
      '/register',
      child: (_, args) => const RegisterPage(),
    ),
    ChildRoute<ModularRoute>(
      '/signin',
      child: (_, args) => const SigninPage(),
    ),
  ];
}
