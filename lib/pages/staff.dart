import 'package:flutter/material.dart';
import 'package:project1/widgets/themes.dart';

class Staff extends StatefulWidget {
  @override
  _StaffState createState() => _StaffState();
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: MyTheme.darkblueishColor,
        title: Text("Our Staff"),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.face_sharp),
              title: Text("Female Staff"),
              subtitle: Text("Abc Xyz"),
            ),
            ListTile(
              leading: Icon(Icons.face_outlined),
              title: Text("Male Staff"),
              subtitle: Text("Raj Xyz"),
            )
          ],
        ),
      ),
    );
  }
}
