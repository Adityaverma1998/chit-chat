import 'package:chit_chat/constant/strings.dart';
import 'package:chit_chat/di/serivce_locators.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onIntitializationComplete;

  const SplashScreen({super.key, required this.onIntitializationComplete});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      print('print before setUp here');
      _setUp().then((_) {
        print('setUp complete here');
        widget.onIntitializationComplete();
      }).catchError((onError) {
        print('check error $onError');
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF101D25),
      ),
      home: Center(
        child: Lottie.asset('assets/images/splash_logo.json'),
      ),
    );
  }

  Future<void> _setUp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await ServiceLocators.configureDependencies();
  }
}
