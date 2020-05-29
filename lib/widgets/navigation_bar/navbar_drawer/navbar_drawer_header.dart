import 'package:cerberus/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NavBarDrawerHeader extends StatelessWidget {
  const NavBarDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: secondaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'MENU',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          )
        ],
      ),
    );
  }
}
