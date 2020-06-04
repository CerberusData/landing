import 'package:cerberus/constants/app_colors.dart';
import 'package:cerberus/widgets/footer/footer_main.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_main.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cerberus/widgets/animations/hover/hover_extensions.dart';

class TechnologyViewTabletDesktop extends StatelessWidget {
  const TechnologyViewTabletDesktop({Key key}) : super(key: key);

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



/* ============================================================ */
/* (Fredhii): If Correct button design move it as a widget */
/* ============================================================ */
class CustomButton extends StatelessWidget {
  final String text;
  /* final String command; */
  /* const CustomButton({Key key, this.text, this.command}) : super(key: key); */
  const CustomButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double sizeText = sizingInformation.isMobile ? 12 : 16;

      return RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)
          ),
          color: secondaryColor,
          textColor: Colors.white,
          onPressed: () {},
          /* onPressed: () { launch(command) },  Posible open tab using launch command from url_launcher library */
          child: Text(
            text, style: TextStyle(fontSize: sizeText),
          ),
      ).showCursorOnHover.moveUpOnHover;
    });
  }
}