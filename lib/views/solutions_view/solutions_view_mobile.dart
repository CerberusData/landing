import 'package:flutter/material.dart';
import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';

class SolutionsViewMobile extends StatelessWidget {
  const SolutionsViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NavBarMain(),
/*         SectionOneTabletDesktop(), */
        FooterMain()
      ],
    );
  }
}