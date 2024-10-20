import 'package:chit_chat/constant/strings.dart';
import 'package:chit_chat/presentation/auth/login_screen.dart';
import 'package:chit_chat/services/navigation_services/navigation_service.dart';
import 'package:flutter/material.dart';

class MyApp  extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appTitle,
      // theme:  AppThemeData.lightThemeData,
      // ? AppThemeData.darkThemeData
      // : AppThemeData.lightThemeData,
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/login',
      routes: {
        '/login':(BuildContext context)=> LoginScreen(),
      },
      // locale: Locale(_languageStore.locale),
      // supportedLocales: _languageStore.supportedLanguages
      //     .map((language) => Locale(language.locale, language.code))
      //     .toList(),
      // localizationsDelegates: [
      //   // A class which loads the translations from JSON files
      //   AppLocalizations.delegate,
      //   // Built-in localization of basic text for Material widgets
      //   GlobalMaterialLocalizations.delegate,
      //   // Built-in localization for text direction LTR/RTL
      //   GlobalWidgetsLocalizations.delegate,
      //   // Built-in localization of basic text for Cupertino widgets
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // home: const HomeScreen(),
    );
  }

}
