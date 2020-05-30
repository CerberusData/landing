import 'package:cerberus/widgets/navigation_bar/navbar_drawer/navbar_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile
              ? NavBarDrawer()
              : null,

        backgroundColor: Color(0xFFF5FFA),
        body: Container(
                child: child,
              )
          )
        );
  }
}




/* import 'package:cerberus/widgets/navigation_bar/navbar_drawer/navbar_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cerberus/widgets/center_view/center_view.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile
              ? NavBarDrawer()
              : null,
        body: CenterView(
          child: Column(
            children: <Widget>[
              Expanded(
                child: child,
              )
            ],
          )
        )
      )
    );
  }
} */