import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';


class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_secure_login_pdn4.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Passowrd",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
