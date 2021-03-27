import 'package:flutter/material.dart';

import 'package:news_app/EditProfile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 15),
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
                                image: AssetImage('assets/images/logo.jpg'),
                                fit: BoxFit.cover)),
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
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Journalist Name",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Container(
                        margin: const EdgeInsets.only(left: 70,),
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 10), child: Divider()),
           
            Divider(),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone"),
                  Text(
                    "01000000000",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            Divider(),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  Text(
                    "Journalist@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              leading: Icon(
                Icons.email,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
