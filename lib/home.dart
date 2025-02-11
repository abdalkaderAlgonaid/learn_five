import 'package:flutter/material.dart';
import 'Login.dart ';

class MyHomePage extends StatelessWidget {
  MyHomePage({this.name = ""});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome :" + name),
        backgroundColor: Colors.lightBlue,
      ),
      body: Text("data"),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(children: [
          DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.amber),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      //backgroundImage: AssetImage("assets/images/a.png"),
                      //radius: 50,
                      ),
                  Divider(
                      indent: 60,
                      endIndent: 60,
                      height: 3,
                      color: Colors.black,
                      thickness: 1),
                  Text(
                    "aaaaaaaaaa.com",
                    style: TextStyle(fontSize: 22),
                  )
                ],
              )),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "Login", Icon(Icons.login), Login()),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Padding buildListTile(BuildContext context, title, icon, page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text(title),
        //  subtitle: Text("click"),
        tileColor: Colors.white,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          //  Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
              (route) => false);
        },
      ),
    );
  }
}
