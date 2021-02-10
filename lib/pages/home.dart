import 'package:flutter/material.dart';
import 'package:project1/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Siddhant";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   fixedColor: Colors.deepPurple,
      //   items: [
      //     BottomNavigationBarItem(
      //       label: "Balance",
      //       icon: Icon(Icons.account_balance),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Upload",
      //       icon: Icon(Icons.upload_file),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "Alarm",
      //       icon: Icon(Icons.alarm),
      //     ),
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.navigation_rounded),
      //   backgroundColor: Colors.deepPurpleAccent,
      //   onPressed: () {},
      // ),
      body: Center(
          child: Container(
        child: Text("My name is $name , i will learn flutter in $days "),
      )),
      drawer: MyDrawer(),
    );
  }
}
