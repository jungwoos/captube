import 'package:flutter/material.dart';
import 'package:captube/locator.dart';
import 'package:captube/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () { locator<NavigationService>().navigateTo(navigationPath); },
        child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
