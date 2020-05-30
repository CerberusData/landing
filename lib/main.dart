import 'package:flutter/material.dart';
import 'package:cerberus/router/route_names.dart';
import 'package:cerberus/router/router.dart';
import 'package:cerberus/services/navigation/navigation_service.dart';
import 'package:cerberus/views/main_view/main_layout.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cerberus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Myriad Pro'),
      ),
      builder: (context, child) => MainLayout(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute, 
    );
  }
}