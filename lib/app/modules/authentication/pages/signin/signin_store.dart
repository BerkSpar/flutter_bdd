import 'package:flutter/material.dart';
import 'package:flutter_bdd/shared/models/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'signin_store.g.dart';

/// SigninStore is the store responsible for the Signin feature.
class SigninStore = _SigninStoreBase with _$SigninStore;

abstract class _SigninStoreBase with Store {
  @observable
  UserModel user = UserModel();

  final formKey = GlobalKey<FormState>();

  void signIn() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    if (user.email != 'test@test.com' || user.password != '123456') {
      return;
    }

    Modular.to.navigate('/home');
  }
}
