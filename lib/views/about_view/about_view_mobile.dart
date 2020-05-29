import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'about_content_two/about_ontent_two_mobile.dart';
import 'package:flutter/material.dart';



class AboutViewMobile extends StatelessWidget {
  const AboutViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
        AboutContentTwoMobile(),
        FooterMain()
      ],
    );
  }
}