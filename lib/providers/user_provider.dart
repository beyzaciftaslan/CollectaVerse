
import 'package:collecta_verse_pt2/services/auth_methods.dart';
import 'package:flutter/material.dart';
import 'package:collecta_verse_pt2/models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User? get getUser => _user; // Null olabileceğini belirttik

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
