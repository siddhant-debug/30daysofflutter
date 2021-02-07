import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Siddhant";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days MyApp $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
