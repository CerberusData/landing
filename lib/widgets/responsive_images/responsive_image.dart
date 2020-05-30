import 'package:cerberus/widgets/responsive_images/responsive_image_movile.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveImage extends StatelessWidget {
  final String url;
  const ResponsiveImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ResponsiveImageMobile(url),
      tablet: ResponsiveImageTabletDesktop(url)
    );
  }
}