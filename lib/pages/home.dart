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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
            label: "Balance",
            icon: Icon(Icons.account_balance),
          ),
          BottomNavigationBarItem(
            label: "Upload",
            icon: Icon(Icons.upload_file),
          ),
          BottomNavigationBarItem(
            label: "Alarm",
            icon: Icon(Icons.alarm),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_secure_login_pdn4.png",
              fit: BoxFit.contain,
            ),
            Text(
              "i will learn flutter in  $days : by $name",
              style: TextStyle(
                height: 2.5,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
