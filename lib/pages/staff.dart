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
              leading: Icon(Icons.face_sharp , color: Colors.black,),
              title: Text("Female Staff" ,
              style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text("Abc Xyz" , style: TextStyle(
                color: Colors.black,
              ),),
              
            ),
            ListTile(
              leading: Icon(Icons.face_outlined, color: Colors.black,),
              title: Text("Male Staff" , style: TextStyle(
                color: Colors.black,
              ),),
              subtitle: Text("Raj Xyz", style: TextStyle(
                color: Colors.black,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
