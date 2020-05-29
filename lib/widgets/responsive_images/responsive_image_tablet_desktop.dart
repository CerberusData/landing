import 'package:flutter/material.dart';

class ResponsiveImageTabletDesktop extends StatelessWidget {
  final String url;
  const ResponsiveImageTabletDesktop(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(url)
    );
  }
}