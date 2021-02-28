import 'package:flutter/material.dart';
import 'package:project1/pages/contacts.dart';

import 'package:project1/pages/login_page.dart';
import 'package:project1/pages/staff.dart';
import 'package:project1/pages/toabout.dart';

import 'pages/home.dart';
import 'utils/routes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
        MyRoutes.toabout: (context) => About(),
        MyRoutes.contacts:(context)=>Contacts(),
        MyRoutes.staff:(context)=>Staff(),
      },
    );
  }
}
