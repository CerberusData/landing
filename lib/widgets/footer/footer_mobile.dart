import 'package:cerberus/constants/app_colors.dart';
import 'package:cerberus/widgets/social_icons/socialicons.dart';
import 'package:flutter/material.dart';
import 'package:cerberus/widgets/animations/hover/hover_extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 50),
        ContentFooterMobile(),
        SizedBox(height: 20),
      ],
    );
  }
}

class ContentFooterMobile extends StatelessWidget {
  const ContentFooterMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .05,
                right: MediaQuery.of(context).size.width * .05,
                top: MediaQuery.of(context).size.height * .05),
            child: Column(
              children: [
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("About Us",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Cerberus",
                                style: TextStyle(color: Colors.white60)),
                            SizedBox(height: 10),
                            Text('Solutions',
                                style: TextStyle(color: Colors.white60)),
                            SizedBox(height: 10),
                            Text('Team',
                                style: TextStyle(color: Colors.white60)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Contact Information",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              /* ========================================================= */
                              /* TODO (Davidnet): Resolve this to an accurate location */
                              /* ========================================================= */
                              child: Text(
                                  "Transversal 5A #39-174 Medellin, Colombia",
                                  style: TextStyle(color: Colors.white60)),
                              onTap: () => launch(
                                  'https://goo.gl/maps/Kc5cCe9e9PDgatKY9'),
                            ).showCursorOnHover.moveUpOnHover,
                            SizedBox(height: 10),
                            /* ========================================================= */
                            /* TODO (Davidnet): Resolve this to Steph email in cerberus */
                            /* ========================================================= */
                            Text('info@cerberusdata.ai',
                                style: TextStyle(color: Colors.white60)),
                            SizedBox(height: 10),
                            Text('+57 320 947 9262',
                                style: TextStyle(color: Colors.white60)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child:
                                  SocialIcon(icon: FontAwesomeIcons.instagram),
                              onTap: () => launch(
                                  'https://www.instagram.com/cerberus.data/'),
                            ).showCursorOnHover.moveUpOnHover,
                            InkWell(
                              child:
                                  SocialIcon(icon: FontAwesomeIcons.facebook),
                              onTap: () => launch(
                              /* ========================================================= */
                              /* TODO (Fredhii): Update media url */
                              /* ========================================================= */
                                  'https://www.instagram.com/cerberus.data/'),
                            ).showCursorOnHover.moveUpOnHover,
                            InkWell(
                              child: SocialIcon(icon: FontAwesomeIcons.twitter),
                              onTap: () => launch(
                                  'https://www.instagram.com/cerberus.data/'),
                            ).showCursorOnHover.moveUpOnHover,
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Copyright \u00A9 2020 All rights reserved\n       Made with \u2764️ by Cerberus AI',
            style: TextStyle(color: Colors.white60),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
