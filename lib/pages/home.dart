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
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            icon: Icon(Icons.favorite, color: Colors.pink,),
          ),
          BottomNavigationBarItem(
            label: "Help Center",
            icon: Icon(Icons.help_center , color: Colors.blue,),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {},
      ),
      body: Center(
          child: Container(
        child: Text("My name is $name , i will learn flutter in $days days "),
      )),
      drawer: MyDrawer(),
    );
  }
}
