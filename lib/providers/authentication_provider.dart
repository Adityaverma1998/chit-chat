import 'package:chit_chat/di/serivce_locators.dart';
import 'package:chit_chat/services/database_service/database_serivce.dart';
import 'package:chit_chat/services/navigation_services/navigation_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier{

  late final FirebaseAuth _auth;
   final NavigationService _navigationService = getIt<NavigationService>();
   final DatabaseService _databaseService = getIt<DatabaseService>();
  AuthenticationProvider(){
    _auth = FirebaseAuth.instance;
  }
}
