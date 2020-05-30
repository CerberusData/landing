import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';
import 'about_content_one/about_content_one_tablet_desktop.dart';
import 'about_content_two/about_content_two_tablet_desktop.dart';



class AboutViewTabletDesktop extends StatelessWidget {
  const AboutViewTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
        AboutContentOneTabletDesktop(),
        AboutContentTwoTabletDesktop(),
        SizedBox(height: 60),
        FooterMain()
      ],
    );
  }
}

