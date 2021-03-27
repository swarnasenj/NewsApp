import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 25, left: 10, right: 10),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae commodo quam, vitae aliquam lectus. Phasellus non tincidunt ante, et dictum risus. Nunc rutrum venenatis dolor, sit amet rhoncus eros tempus eget. Donec lacinia eget est non mattis. Curabitur eleifend",
              style: TextStyle(color: Colors.black, fontSize: 13),),
          ],
        ),
      ),
    );
  }
}