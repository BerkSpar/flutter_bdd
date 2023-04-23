import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

/// HomeStore is the store responsible for the Home feature.
class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {}
