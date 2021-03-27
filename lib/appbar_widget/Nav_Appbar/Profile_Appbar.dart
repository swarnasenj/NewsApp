import 'package:flutter/material.dart';

import 'package:news_app/EditProfile.dart';


class ProfileAppbar extends StatefulWidget {
  @override
  _ProfileAppbarState createState() => _ProfileAppbarState();
}

class _ProfileAppbarState extends State<ProfileAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            'Profile',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 17,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
        ),
      ],
      iconTheme: IconThemeData(color: Colors.blueAccent),
    );
  }
}
