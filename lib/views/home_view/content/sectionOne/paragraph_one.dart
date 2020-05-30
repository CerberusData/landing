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
            sisizngInformation.isMobile
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
        double leftpadd =
            sisizngInformation.isMobile
            ? 40
            : sisizngInformation.isTablet
            ? 60
            : 120;
        double rigthpadd =
            sisizngInformation.isMobile
            ? 40
            : sisizngInformation.isTablet
            ? 0
            : 0;

        return Container(
            padding: EdgeInsets.only(left: leftpadd, right: rigthpadd),
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Cerberus',
                  textAlign: textAlignment,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: titleSize)
                ),
                SizedBox(height: 20),
                Text(
                  'Improve your data recollection through the use of IoT and Machine learning',
                  textAlign: textAlignment,
                  style: TextStyle(fontSize: descriptionSize, letterSpacing: 1.2),
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