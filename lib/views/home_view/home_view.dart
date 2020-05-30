import 'package:cerberus/views/home_view/home_view_mobile.dart';
import 'package:cerberus/views/home_view/home_view_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewMobile(),
      desktop: HomeViewTabletDesktop(),
    );
  }
}
 