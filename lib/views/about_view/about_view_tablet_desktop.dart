import 'package:cerberus/views/about_view/content/sentionOne/about_content_one_tablet_desktop.dart';
import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';


class AboutViewTabletDesktop extends StatelessWidget {
  const AboutViewTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
        SizedBox(height: 40),
        AboutContentOneTabletDesktop(),
        SizedBox(height: 60),
        FooterMain()
      ],
    );
  }
}
