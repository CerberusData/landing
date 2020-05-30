import 'package:cerberus/views/home_view/content/sectionFour/content_four_tablet_desktop.dart';
import 'package:cerberus/views/home_view/content/sectionOne/content_one_desktop.dart';
import 'package:cerberus/views/home_view/content/sectionThree/content_three_tablet_desktop.dart';
import 'package:cerberus/views/home_view/content/sectionTwo/content_two_tablet_desktop.dart';
import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';



class HomeViewTabletDesktop extends StatelessWidget {
  const HomeViewTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
        SectionOneTabletDesktop(),
        SectionTwoTabletDesktop(),
        SectionThreeTabletDesktop(),
        SectionFourTabletDesktop(),
        FooterMain()
      ],
    );
  }
}