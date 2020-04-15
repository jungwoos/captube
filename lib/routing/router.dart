//import 'dart:core';
import 'package:captube/routing/route_names.dart';
import 'package:captube/views/capture_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:captube/views/episodes_view.dart';
import 'package:captube/views/details_view.dart';

import 'package:captube/extension/string_extension.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name.getRoutingData;
  switch (routingData.route) {
    case HomeRoute:
      return _getPageRoute(EpisodesView(), settings);
    case CaptureRoute:
      return _getPageRoute(CaptureView(), settings);
    case EpisodeDetailsRoute:
      var id = routingData['id'].toString(); // Get the id from the data.
      //var id = int.tryParse(routingData['id']); // Get the id from the data.
      return _getPageRoute(DetailsView(id: id), settings);
    default:
      return _getPageRoute(EpisodesView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
