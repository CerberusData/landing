import 'package:cerberus/views/home_view/content/sectionFour/content_four_mobile.dart';
import 'package:cerberus/views/home_view/content/sectionOne/content_one_mobile.dart';
import 'package:cerberus/views/home_view/content/sectionThree/content_three_mobile.dart';
import 'package:cerberus/views/home_view/content/sectionTwo/content_two_mobile.dart';
import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';



class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
        SectionOneMobile(),
        SectionTwoMobile(),
        SectionThreeMobile(),
        SectionFourMobile(),
        FooterMain()
      ],
    );
  }
}