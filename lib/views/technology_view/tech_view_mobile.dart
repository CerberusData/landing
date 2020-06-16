import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';

import 'package:cerberus/views/technology_view/tech_view_tablet_desktop.dart';


class TechnologyViewMobile extends StatelessWidget {
  const TechnologyViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView( /* View list to enable scroll */
      children: <Widget>[
        NavBarMain(),

        /* ============================= */
        /* Insert your components here */
        /* EXAMPLE: */
        
        SizedBox(height: 100),
        Center(child: CustomButton(text: 'Try it on Browser')),
        SizedBox(height: 100),
        
        /* ============================= */

        FooterMain()
      ],
    );
  }
}