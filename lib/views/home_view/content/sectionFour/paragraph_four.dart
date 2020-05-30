import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ParagraphFour extends StatelessWidget {
  const ParagraphFour({Key key}) : super(key: key);

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
                  'Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSize, letterSpacing: 1.2)
                ),
                SizedBox(height: 20),
                Text(
                  'Terraform (Cloud or on premise solutions) Raspberry Pi and Jetson Family, Tensorflow',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: descriptionSize, letterSpacing: 1.2),
                ),
                SizedBox(height: 10),
                Text(
                  'Our solution can be deployed through the use of containers (Docker) into a multiple family of IoT devices, our focus is using both Raspberry Pi, for tasks that do not require a lot of edge computing, and Jetson for tasks that require real-time video processing.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: descriptionSize, letterSpacing: 1.2),
                ),
                SizedBox(height: 20)
              ],
            ),
          );
      },
    );
  }
}