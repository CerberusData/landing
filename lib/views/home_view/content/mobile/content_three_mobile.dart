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
                fontSize: subtitleSizeMobile,
                height: 1.5,
                color: Colors.black45
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}