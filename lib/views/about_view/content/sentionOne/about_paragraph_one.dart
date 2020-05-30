import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class MemberBox extends StatelessWidget {
  final String image;
  final String job;
  final String text;
  const MemberBox(this.image, this.job, this.text);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MemberBoxMobile(image, job, text),
      tablet: MemberBoxTabletDesktop(image, job, text)
    );
  }
}


class MemberBoxTabletDesktop extends StatelessWidget {
  final String image;
  final String job;
  final String text;
  const MemberBoxTabletDesktop(this.image, this.job, this.text);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        var screenSize = sizeInfo.isTablet
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.width / 4;

        return Container(
          width: screenSize,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image)
                  )
                ),
              ),
              SizedBox(height: 20),
              Text(job, style: TextStyle(fontSize: textSizeDesktop, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text(text, style: TextStyle(fontSize: textSizeTwoDesktop), textAlign: TextAlign.center)
            ],
          )
        );
      }
    );
  }
}



class MemberBoxMobile extends StatelessWidget {
  final String image;
  final String job;
  final String text;
  const MemberBoxMobile(this.image, this.job, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image)
              )
            ),
          ),
          SizedBox(height: 20),
          Text(job, style: TextStyle(fontSize: textSizeMobile, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text(text, style: TextStyle(fontSize: textSizeTwoMobile), textAlign: TextAlign.center),
          SizedBox(height: 50),
        ],
      )
    );
  }
}
