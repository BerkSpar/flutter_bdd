import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

/// SplashStore is the store responsible for the Splash feature.
///
/// It is responsible for providing the state of the Splash feature. It is also
/// responsible for providing the actions that can be performed on the Splash
/// feature. It is also responsible for redirect the user to OnboardPage or
/// HomePage.
class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  Future<void> init() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    Modular.to.navigate('/onboard');
  }
}
