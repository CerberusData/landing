import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import '../paragraph_one.dart';
import 'package:flutter/material.dart';


class SectionOneMobile extends StatelessWidget {
  const SectionOneMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 70),
        ParagraphOne(),
        SizedBox(height: 10),
        ResponsiveImage('assets/images/home_one.png'),
      ],
    );
  }
}
