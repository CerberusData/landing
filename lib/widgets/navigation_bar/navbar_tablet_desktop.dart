import 'package:cerberus/constants/app_colors.dart';
import 'package:cerberus/router/route_names.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_item/navbar_item.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';
import 'package:cerberus/widgets/animations/hover/hover_extensions.dart';

class TabletDesktopNavBar extends StatelessWidget {
  const TabletDesktopNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', HomeRoute),
              SizedBox(width: 30,),
              NavBarItem('About', AboutRoute),
              SizedBox(width: 30,),
              NavBarItem('Solutions', SolutionsRoute),
              SizedBox(width: 30,),
              RaisedButton(
                  color: secondaryColor,
                  shape:StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                    "Request Demo",
                    style: TextStyle(fontSize: 16,  color: Colors.white),
                  ),
                  highlightColor: Colors.orange[100]
              ).showCursorOnHover.moveUpOnHover
            ],
          )
        ],
      ),
    );
  }
}