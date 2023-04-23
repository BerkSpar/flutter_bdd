import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

/// AppStore is the main store of the application.
///
/// It is responsible for providing the main state of the application.
class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {}
