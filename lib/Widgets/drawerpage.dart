import 'package:flutter/material.dart';
import 'package:news_app/Form/Signup_Page.dart';
import 'package:news_app/Form/login_page.dart';

class DrawerPage extends StatefulWidget {
  final func;
  DrawerPage({this.func});

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int selectedIndex = 0;
  bool isLoogedIn = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/avater.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Hello,",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Container(
                                  height: 35,
                                  width: 55,
                                  margin: EdgeInsets.only(left: 65),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(15),
                                    shadowColor: Colors.blue,
                                    color: Colors.blue,
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => LoginPage()));
                                        },
                                        child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 35,
                              width: 55,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.lightBlue,
                                    style: BorderStyle.solid,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: GestureDetector(
                                     onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => SignupPage()));
                                        },
                                    child: Center(
                                      child: Text(
                                        "SignUp",
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(margin: EdgeInsets.only(top: 10), child: Divider()),
            SizedBox(height: 15),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Post News"),
              leading: Icon(Icons.post_add),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("News List"),
              leading: Icon(Icons.list),
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: Text("About Us"),
              leading: Icon(Icons.help),
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                widget.func(selectedIndex);
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
              onTap: () => Navigator.pushReplacementNamed(context, '/')
            ),
          ],
        ),
      ),
    );
  }
}
