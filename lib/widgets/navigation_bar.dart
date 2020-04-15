import 'package:captube/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:captube/locator.dart';
import 'package:captube/services/navigation_service.dart';
import 'package:captube/routing/router.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Padding(
          child: Text(
            "CAPTUBE",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
          ),
          padding: EdgeInsets.only(left: 12.0),
        ),

        actions: <Widget>[
          FlatButton(
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
            onPressed: (){
              locator<NavigationService>().navigateTo(HomeRoute);
              print("pressed");
            },
          ),

          FlatButton(
            child: Text(
              "Capture",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
            onPressed: (){
              locator<NavigationService>().navigateTo(CaptureRoute);
              print("pressed");
            },
          ),

          IconButton(
            icon: Icon(
              Icons.search,
            ),
            color: Colors.black,
            onPressed: (){
              print("Pressed");
            },
          ),
        ],
        elevation: 5.0,
        backgroundColor: Colors.white,
    );
  }
}
