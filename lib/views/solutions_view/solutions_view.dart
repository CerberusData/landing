import 'package:cerberus/views/solutions_view/solutions_view_mobile.dart';
import 'package:cerberus/views/solutions_view/solutions_view_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SolutionsView extends StatelessWidget {
  const SolutionsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SolutionsViewMobile(),
      desktop: SolutionsViewTabletDesktop(),
    );
  }
}
