import 'package:mobx/mobx.dart';

part 'onboard_store.g.dart';

/// OnboardStore is the store responsible for the Onboard feature.
///
/// It is responsible for providing the state of the Onboard feature.
class OnboardStore = _OnboardStoreBase with _$OnboardStore;

abstract class _OnboardStoreBase with Store {}
