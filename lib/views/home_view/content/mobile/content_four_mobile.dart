import 'package:cerberus/views/home_view/content/paragraph_four.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';


class SectionFourMobile extends StatelessWidget {
  const SectionFourMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        ParagraphFour(),
        SizedBox(height: 50),
        ResponsiveImage('assets/images/home_three.png'),
      ],
    );
  }
}
