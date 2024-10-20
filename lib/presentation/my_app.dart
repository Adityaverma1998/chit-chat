import 'package:chit_chat/constant/app_theme.dart';
import 'package:chit_chat/constant/strings.dart';
import 'package:chit_chat/presentation/auth/login_screen.dart';
import 'package:chit_chat/providers/authentication_provider.dart';
import 'package:chit_chat/services/navigation_services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (BuildContext _context) {
            return AuthenticationProvider();
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        theme: AppThemeData.darkThemeData,
        navigatorKey: NavigationService.navigatorKey,
        initialRoute: '/login',
        routes: {
          '/login': (BuildContext context) => LoginScreen(),
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
        home: Text('Hello',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith()),
      ),
    );
  }
}
