import 'package:flutter/material.dart';
import 'package:flutter_bdd/shared/models/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'register_store.g.dart';

/// RegisterStore is the store responsible for the Register feature.
///
/// It is responsible for providing the dependencies of the Register feature.
class RegisterStore = _RegisterStoreBase with _$RegisterStore;

abstract class _RegisterStoreBase with Store {
  @observable
  UserModel user = UserModel();

  final formKey = GlobalKey<FormState>();

  void register() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Modular.to.navigate('/home');
  }
}
