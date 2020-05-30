import 'package:cerberus/constants/app_text.dart';
import 'package:cerberus/views/about_view/about_content_one/about_paragraph_one.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';


class AboutContentOneMobile extends StatelessWidget {
  const AboutContentOneMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Text(
          'About Us',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSizeMobile)
        ),
        AboutParagraphOne(),
        SizedBox(height: 50),
        ResponsiveImage('assets/images/about.png'),
      ],
    );
  }
}