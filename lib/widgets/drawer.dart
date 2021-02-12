import 'package:flutter/material.dart';
//import 'package:project1/pages/home.dart';
//import 'package:project1/utils/routes.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/129725250_3761735170554906_9062192265077088904_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_ohc=07YWMNRPkjgAX837WDE&tp=1&oh=8517f7db727e12d1716220c1129666e1&oe=604CD0E2";

    return Drawer(
      child: Container(
        
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Siddhant"),
                accountEmail: Text("siddhanttomar@hotmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              title: Text(
                "Account",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail_rounded,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
