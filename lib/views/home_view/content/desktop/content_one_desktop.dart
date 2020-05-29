import 'package:cerberus/views/home_view/content/paragraph_one.dart';
import 'package:cerberus/widgets/responsive_images/responsive_image.dart';
import 'package:flutter/material.dart';

class SectionOneTabletDesktop extends StatelessWidget {
  const SectionOneTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) - 80, /* IMPORTANT */
      child: Row(
        children: <Widget>[
          ParagraphOne(), 
          Expanded(
            child: Center(child: ResponsiveImage('assets/images/home_one.png'))
            /* 
            Column(
/*               crossAxisAlignment: CrossAxisAlignment.center, */
              children: <Widget>[
                Image.network('assets/images/home_one.png')
              ],
            ) */
          )
        ],
      ),
    );
  }
} 