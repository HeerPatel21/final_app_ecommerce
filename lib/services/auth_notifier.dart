import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import '../main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authNotifier extends ChangeNotifier {
  User _user;
  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  Users _userDetails;
  Users get userDetails => _userDetails;

  void setUserDetails(Users users) {
    _userDetails = users;
    notifyListeners();
  }
}
