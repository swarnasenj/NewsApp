import 'package:flutter/material.dart';
import 'package:news_app/Data/data.dart';
import 'package:news_app/Screens/NavigationPages/HomePage.dart';
import 'package:news_app/Screens/NavigationPages/PostNews.dart';
import 'package:news_app/Screens/NewsList.dart';
import 'package:news_app/Widgets/ForYouContainer.dart';
import 'package:news_app/Widgets/drawerpage.dart';
import 'package:news_app/Screens/AboutUs.dart';
import 'NavigationPages/ProfilePage.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List pageList = [
    HomePage(),
    ProfilePage(),
    PostNews(),
    NewsList(),
    AboutUs(),
   
  ];

  int selectedIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 1),
            ),
            Container(
              height: 150,
              width: 250,
              child: Image.asset(
                'assets/images/logo1.jpg',
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            width: 60,
          )
        ],
      ),
      backgroundColor: Colors.white,
      drawer: DrawerPage(
        func: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pageList[selectedIndex],
    );
  }
}
