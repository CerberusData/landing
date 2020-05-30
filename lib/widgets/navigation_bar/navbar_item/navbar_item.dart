import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cerberus/locator.dart';
import 'package:cerberus/extensions/hover_extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cerberus/datamodels/navbar_item_model.dart';
import 'package:cerberus/services/navigation/navigation_service.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_item/navbar_item_mobile.dart';
import 'package:cerberus/widgets/navigation_bar/navbar_item/navbar_item_tablet_desktop.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model =NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ).showCursorOnHover.moveUpOnHover,
      )
    );
  }
}