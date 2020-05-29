import 'package:cerberus/constants/app_text.dart';
import 'package:flutter/material.dart';

import 'about_paragraph_two.dart';


class AboutContentTwoTabletDesktop extends StatelessWidget {
  const AboutContentTwoTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 120),
      height: (MediaQuery.of(context).size.height) - 120, /* IMPORTANT */
      child: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text(
            'Team',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSizeDesktop)
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                MemberBox('assets/images/t_steph.png', 'CEO', 'Stephanie has 4 years of experience in the entrepreneurship world, taking multiple roles, such as founder at Eaters SAS and occupying Chief positions as CGO in Kiwibot'),
                SizedBox(height: 10),
                MemberBox('assets/images/t_david.jpeg', 'CTO', 'David is a scientist and educator by training and engineer by practice. First google developer in ML in Colombia and AI & Robotics lead in Kiwibot focused on Vision stack and IoT devices')
            ],
          )
        ],
      ),
    );
  }
}