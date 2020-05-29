import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  final Widget child;
  const CenterView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD)
          ]
        )
      ),
/*       padding: const EdgeInsets.symmetric(horizontal: 50), */
      alignment: Alignment.topCenter,
      child: child
    );
  }
}