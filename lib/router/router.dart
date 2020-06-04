import 'package:cerberus/views/technology_view/tech_view.dart';
import 'package:flutter/material.dart';
import 'package:cerberus/views/about_view/about_view.dart';
import 'package:cerberus/views/home_view/home_view.dart';
import 'package:cerberus/views/solutions_view/solutions_view.dart';
import 'package:cerberus/router/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case TechnologyRoute:
      return _getPageRoute(TechnologyView(), settings);
    case SolutionsRoute:
      return _getPageRoute(SolutionsView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
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