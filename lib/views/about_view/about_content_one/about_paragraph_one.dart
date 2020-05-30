import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutParagraphOne extends StatelessWidget {
  const AboutParagraphOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sisizngInformation) {
        var textAlignment =
            sisizngInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double descriptionSize = sisizngInformation.isMobile
            ? textSizeTwoMobile
            : textSizeTwoDesktop;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Cerberus was created by Stephanie Falla and David Cardozo, leaders in technological communities both in the United States and in LATAM.',
                textAlign: textAlignment,
                style: TextStyle(fontSize: descriptionSize),
              ),
              SizedBox(height: 10),
              Text(
                'In the last 2 years they have been consultants for technology companies in growth stage, and innovation projects in government organizations. Previously, they both worked at Kiwibot serving as director of growth and operations, and head of AI & Robotics respectively',
                textAlign: textAlignment,
                style: TextStyle(fontSize: descriptionSize),
              ),
              SizedBox(height: 20)
            ],
          ),
        );
      },
    );
  }
}
