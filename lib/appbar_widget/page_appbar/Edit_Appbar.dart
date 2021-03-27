import 'package:flutter/material.dart';

class EditAppbar extends StatefulWidget {
  @override
  _EditAppbarState createState() => _EditAppbarState();
}

class _EditAppbarState extends State<EditAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Container(
              child: BackButton(
            color: Colors.blueAccent,
          )),
          Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 17,
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: Colors.blueAccent),
    );
  }
}
