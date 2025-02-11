import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Login"),
            backgroundColor: Colors.lightBlue,
            leading: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(name: "ahmed"),
                      ),
                      (route) => false);
                },
                icon: Icon(Icons.home))));
  }
}
