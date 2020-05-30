import 'package:cerberus/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cerberus/extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class SendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double paddingRigth = sizingInformation.isMobile ? 40 : 60;

      return Padding(
        padding: EdgeInsets.only(
          left: 4.0,
          right: paddingRigth,
          top: 10,
          bottom: 40,
        ),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, offset: Offset(0, 8), blurRadius: 8)
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    flex: 7,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Email Address'),
                    )),
                Expanded(
                  flex: 3,
                  child:
                      ResponsiveBuilder(builder: (context, sizingInformation) {
                    double textFontSize = sizingInformation.isMobile ? 12 : 16;
                    double sizeSizedBox = sizingInformation.isMobile
                        ? 4
                        : sizingInformation.isTablet ? 6 : 8;

                    return InkWell(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  secondaryColor,
                                  secondaryColor,
                                ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF6078ea).withOpacity(.3),
                                  offset: Offset(0.0, 8.0),
                                  blurRadius: 8.0)
                            ]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              customLaunch(context,
                                  'mailto:stephanie@cerberusdata.ai?subject=test&body=$emailController.text');
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(" "),
                                  Icon(Icons.send, color: Colors.white),
                                  Text("Send",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: textFontSize,
                                          letterSpacing: 1.0)),
                                  SizedBox(
                                    width: sizeSizedBox,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).showCursorOnHover.moveUpOnHover;
                  }),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

void showAlert(BuildContext context, String title) {
  showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Text(title),
            content: Icon(Icons.beenhere),
          ));
}

void customLaunch(context, command) async {
  if (await canLaunch(command)) {
    await launch(command);
    showAlert(context, 'Send');
  } else {
    showAlert(context, 'Failed');
  }
}

/* ============================================================================ */
/* MAILER */
/* ============================================================================ */
// TODO (davidnet) Remove this part of the code
/* 
void customLaunch(context, mailaddress) async {
  print('OK');
  String username = 'SourceEmail@gmail.com';
  final smtpServer = gmail(username, PASSWORD);

  final message = Message()
    ..from = Address(username)
    ..recipients.add('MailReceiver@gmail.com')
    ..subject = 'TEST'
    ..text = mailaddress;

  try {
    await send(message, smtpServer);
    showAlert(context, 'Send');
  } on MailerException catch (e) {
    showAlert(context, e.toString());
  }
}
*/
/* ============================================================================ */
