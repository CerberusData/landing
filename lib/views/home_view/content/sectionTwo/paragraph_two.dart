import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ParagraphTwo extends StatelessWidget {
  const ParagraphTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sisizngInformation) {
        double titleSize = 
            sisizngInformation.isMobile
            ? subtitleSizeMobile
            : subtitleSizeDesktop;
        double descriptionSize =
            sisizngInformation.isMobile
            ? textSizeTwoMobile
            : textSizeTwoDesktop;

        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Why Us?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSize, letterSpacing: 1.2)
                ),
                SizedBox(height: 20),
                Text(
                  'Cerberus combines embedded devices with data systems to create a seamless experience on analyzing business insights (business opportunities through data monetization)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: descriptionSize, letterSpacing: 1.2),
                ),
                SizedBox(height: 12),
                Text(
                  'PowerBI tools are becoming the norm in data-driven companies, as such, these applications require a lot of clean data to provide insights. Cerberus focuses on providing automatically clean data using embedded devices with machine learning to empower data and power bi tools.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: descriptionSize, letterSpacing: 1.2),
                ),
              ],
            ),
          );
      },
    );
  }
}