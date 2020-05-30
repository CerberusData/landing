import 'package:cerberus/constants/app_text.dart';
import 'package:cerberus/views/about_view/about_content_one/about_paragraph_one.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';


class AboutContentOneTabletDesktop extends StatelessWidget {
  const AboutContentOneTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120),
      height: (MediaQuery.of(context).size.height) - 150, /* IMPORTANT */
      child: Column(
        children: <Widget>[
          SizedBox(height: 70),
          Text(
            'About Us',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSizeDesktop)
          ),
          Row(
            children: <Widget>[
                AboutParagraphOne(),
                Expanded(child: Center(child: ResponsiveImage('assets/images/about.png'))),
            ],
          )
        ],
      ),
    );
  }
}