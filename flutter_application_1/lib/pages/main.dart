import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/size_config.dart';
import 'package:flutter_application_1/pages/styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
            title: 'Learning platform application Demo',
            theme: AppTheme.lightTheme,
            home: WelcomeScreen(),
          );
        },
      );
    });
  }
}
