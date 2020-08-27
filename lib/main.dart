import 'package:actoss_incident/screen/flash/flash.dart';
import 'package:actoss_incident/screen/main/home.dart';
import 'package:actoss_incident/screen/user/login.dart';
import 'package:flutter/material.dart';

import 'env/theam.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.PRIMARY_COLOR,
        brightness: Brightness.light,
        accentColor: Colors.cyan[600],
        //fontFamily: 'Qanelas',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
