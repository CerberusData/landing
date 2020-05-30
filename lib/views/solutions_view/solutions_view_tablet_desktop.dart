import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';

class SolutionsViewTabletDesktop extends StatelessWidget {
  const SolutionsViewTabletDesktop({Key key}) : super(key: key);

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