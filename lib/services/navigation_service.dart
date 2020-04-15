import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Map<String, String> queryParams}) {
    if (queryParams != null) {
      //routeName = "$routeName/?id=$id";
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }
    return navigatorKey.currentState.pushNamed(routeName);
  }

  goBack() {
    navigatorKey.currentState.pop();
  }
}