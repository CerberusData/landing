import 'package:cerberus/views/home_view/content/sectionFour/paragraph_four.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';

class SectionFourTabletDesktop extends StatelessWidget {
  const SectionFourTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120),
      height: (MediaQuery.of(context).size.height) - 120, /* IMPORTANT */
      child: Row(
        children: <Widget>[
          ParagraphFour(),
          Expanded(child: Center(child: ResponsiveImage('assets/images/home_three.png'))),
        ],
      ),
    );
  }
}