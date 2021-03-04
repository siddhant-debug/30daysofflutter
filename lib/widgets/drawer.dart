

import 'package:flutter/material.dart';
import 'themes.dart';
import 'package:project1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        
        color: context.canvasColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("BmakeOvers"),
                accountEmail: Text("siddhanttomar@hotmail.com"),
                decoration: BoxDecoration(color: MyTheme.darkblueishColor),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/163214005/original/b502735733b0164118ac56625455332e885c1cbf/design-your-unisex-salon-logo.png"),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.toabout);
              },
              leading: Icon(
                Icons.border_color,
                color: Colors.white,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.staff);
              },
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
              ),
              title: Text(
                "Staff",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.contacts);
              },
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
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
