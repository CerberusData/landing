import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';

class SectionThreeMobile extends StatelessWidget {
  const SectionThreeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 50),
        TipTable(),
        SizedBox(height: 20),
      ],
    );
  }
}

class TipTable extends StatelessWidget {
  const TipTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 80),
          Text(
            "We generate ecosystems made up of embedded systems, cloud digitization processes and analytical feedback and prediction systems",
            style: TextStyle(
                fontSize: titleSizeMobile,
                height: 1.5,
                color: Colors.black45
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  )
                ]),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
                vertical: MediaQuery.of(context).size.width * .03),
            margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
            child: Column(
              children: [
                SizedBox(height: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildTips('assets/images/data.png',
                        'Analytics',
                        "Organize your data"),
                    SizedBox(height: 20),
                    BuildTips('assets/images/iot.png',
                        'IoT',
                        "Embed your information"),
                    SizedBox(height: 20),
                    BuildTips('assets/images/sensor.png',
                        'Sensorics',
                        "Connect your devices"),
                    SizedBox(height: 30),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


class BuildTips extends StatelessWidget {
  final String url;
  final String subtitle;
  final String text;
  const BuildTips(this.url, this.subtitle, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.network(url, width: 120, height: 120),
        Text(
          subtitle,
          textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: subtitleSizeMobile,
              height: 1.5,
              color: Colors.black54,
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          width: 500,
          child:Text(
              text,
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: textSizeTwoMobile,
                  height: 1.5,
                  color: Colors.black45,
                ),
            )
        )
      ],
    );
  }
}