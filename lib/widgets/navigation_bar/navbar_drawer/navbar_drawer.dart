import 'package:cerberus/router/route_names.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_drawer/navbar_drawer_header.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_item/navbar_item.dart';
import 'package:flutter/material.dart';

class NavBarDrawer extends StatelessWidget {
  const NavBarDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ]
      ),
      child: Column(
        children: <Widget>[
          NavBarDrawerHeader(),
          NavBarItem('Home', HomeRoute, icon: Icons.home),
          NavBarItem('About', AboutRoute, icon: Icons.account_box),
          NavBarItem('Technology', TechnologyRoute, icon: Icons.all_inclusive),
          /* NavBarItem('Solutions', SolutionsRoute, icon: Icons.widgets), */
        ],
      ),
    );
  }
}