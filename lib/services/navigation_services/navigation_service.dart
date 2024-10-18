import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  void removeAndNavigateToRoute(String _route) {
    navigatorKey?.currentState?.popAndPushNamed(_route);
  }

  void navigateToRoute(String _route) {
    navigatorKey?.currentState?.pushNamed(_route);
  }

  void navigateToPage(Widget _widget) {
    navigatorKey?.currentState
        ?.push(MaterialPageRoute(builder: (BuildContext context) {
      return _widget;
    }));
  }
  void goBack(){
    navigatorKey?.currentState?.pop();
  }
  void pushNamedAndRemoveUntil(String newRouteName) {
    navigatorKey?.currentState?.pushNamedAndRemoveUntil(
      newRouteName,
          (Route<dynamic> route) => false,
    );
  }

}
