import 'package:flutter/material.dart';
import 'package:project1/pages/login_page.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.deepOrange),
      initialRoute: "/home",
      routes: {
        "/" : (context) => Loginpage(),
        "/home" : (context) => Homepage(),
      } ,
    );
  }
}
