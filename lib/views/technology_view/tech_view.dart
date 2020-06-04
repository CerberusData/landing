import 'package:cerberus/views/technology_view/tech_view_mobile.dart';
import 'package:cerberus/views/technology_view/tech_view_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TechnologyView extends StatelessWidget {
  const TechnologyView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TechnologyViewMobile(),
      desktop: TechnologyViewTabletDesktop(),
    );
  }
}
