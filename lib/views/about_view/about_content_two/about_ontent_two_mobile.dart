import 'package:cerberus/constants/app_text.dart';
import 'package:cerberus/views/about_view/about_content_two/about_paragraph_two.dart';
import 'package:flutter/material.dart';


class AboutContentTwoMobile extends StatelessWidget {
  const AboutContentTwoMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Text(
          'Team',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, height: 1.0, fontSize: titleSizeMobile)
        ),
        SizedBox(height: 40),
        MemberBox('assets/images/t_steph.png', 'CEO', 'Stephanie has 4 years of experience in the entrepreneurship world, taking multiple roles, such as founder at Eaters SAS and occupying Chief positions as CGO in Kiwibot'),
        MemberBox('assets/images/t_david.jpeg', 'CTO', 'David is a scientist and educator by training and engineer by practice. First google developer in ML in Colombia and AI & Robotics lead in Kiwibot focused on Vision stack and IoT devices'),
        SizedBox(height: 30),
      ],
    );
  }
}  