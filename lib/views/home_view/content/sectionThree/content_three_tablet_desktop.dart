import 'package:cerberus/constants/app_colors.dart';
import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SectionThreeTabletDesktop extends StatelessWidget {
  const SectionThreeTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .2,
        horizontal: MediaQuery.of(context).size.width * .05
      ),
      child: Column(
        children: <Widget>[

          ResponsiveBuilder(
            builder: (context, sizeInfo) {
              var screenSize = sizeInfo.isMobile
                  ? MediaQuery.of(context).size.width / 1.3
                  : MediaQuery.of(context).size.width / 1.7;
              double textQuoteSize = sizeInfo.isDesktop
                  ? subtitleSizeDesktop
                  : subtitleSizeMobile;

              return Container(
                width: screenSize,
                child:Text(
                    "We generate ecosystems made up of embedded systems, cloud digitization processes, analytical feedback and prediction systems",
                    style: TextStyle(
                      fontSize: textQuoteSize,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  )
                );
            }
          ),
        ],
      ),
    );
  }
}