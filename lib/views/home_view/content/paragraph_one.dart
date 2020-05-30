import 'package:cerberus/constants/app_text.dart';
import 'package:cerberus/widgets/send_email/send_email.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ParagraphOne extends StatelessWidget {
  const ParagraphOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sisizngInformation) {
        var textAlignment = 
            sisizngInformation.deviceScreenType == DeviceScreenType.desktop 
            ? TextAlign.left
            : TextAlign.center;
        double titleSize = 
            sisizngInformation.isMobile
            ? titleSizeMobile
            : titleSizeDesktop;
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
                  'Cerberus',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSize)
                ),
                SizedBox(height: 20),
                Text(
                  'Improve your data recollection through the use of IoT and Machine learning',
                  textAlign: textAlignment,
                  style: TextStyle(fontSize: descriptionSize),
                ),
                SizedBox(height: 20),
                SendEmail()
              ],
            ),
          );
      },
    );
  }
}