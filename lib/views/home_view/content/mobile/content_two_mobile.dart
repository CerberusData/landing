import 'package:cerberus/views/home_view/content/paragraph_two.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';


class SectionTwoMobile extends StatelessWidget {
  const SectionTwoMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 80),
        ParagraphTwo(),
        SizedBox(height: 50),
        ResponsiveImage('assets/images/home_four.png'),
      ],
    );
  }
}
