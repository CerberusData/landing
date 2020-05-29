import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_view_mobile.dart';
import 'about_view_tablet_desktop.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewMobile(),
      desktop: AboutViewTabletDesktop(),
    );
  }
}
