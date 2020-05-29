import 'package:cerberus/widgets/footer/footer_mobile.dart';
import 'package:cerberus/widgets/footer/footer_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterMain extends StatelessWidget {
  const FooterMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(),
      desktop: FooterTabletDesktop(),
    );
  }
}