import 'package:flutter/material.dart';
import '../data/models/user_model.dart';
import '../data/services/fake_data_service.dart';

class UserProvider extends ChangeNotifier {

  final FakeDataService _service =
      FakeDataService();

  UserModel? user;

  void loadUser() {
    user = _service.getUser();
    notifyListeners();
  }
}