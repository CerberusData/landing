import 'package:flutter/material.dart';

class ResponsiveImageMobile extends StatelessWidget {
  final String url;
  const ResponsiveImageMobile(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(url, scale: .85)
    );
  }
}