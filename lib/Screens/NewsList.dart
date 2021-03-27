import 'package:flutter/material.dart';
import 'package:news_app/Data/data.dart';

import 'package:news_app/Widgets/ForYouContainer.dart';

class NewsList extends StatefulWidget {
  get article => null;

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'News List',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildForYouContainers(),
          ],
        )),
      ),
    );
  }

  Widget buildForYouContainers() {
    List<Widget> forYouContainers = [];
    for (Article article in forYou) {
      forYouContainers.add(ForYouContainer(
        article: article,
      ));
    }

    return Column(
      children: forYouContainers,
    );
  }
}
