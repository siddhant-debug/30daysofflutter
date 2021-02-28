import 'package:flutter/material.dart';
import 'package:project1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "cart".text.make(),
      ),
    );
  }
}