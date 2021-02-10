import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Form( 
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_hey_email_liaa.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 50)),
            Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Passowrd",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "passowr length should be atleast 6";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 20),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 35,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                    ),
                  ),
                ),
                // ElevatedButton(
                // child: Text("Login"),
                //style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                //onPressed: () {
                //Navigator.pushNamed(context, MyRoutes.homeRoute);
                //},
                //)
              ],
            )
          ],
        ),
      )),
    );
  }
}
