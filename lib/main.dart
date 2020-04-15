import 'package:captube/routing/route_names.dart';
import 'package:captube/routing/router.dart';
import 'package:captube/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:captube/views/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CapTube - beta',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      //home: LayoutTemplate(),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
