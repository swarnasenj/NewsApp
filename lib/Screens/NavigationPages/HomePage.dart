import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:news_app/Data/data.dart';
import 'package:news_app/Widgets/ForYouContainer.dart';
import 'package:news_app/Widgets/TrendingContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'All News',
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
          DefaultTabController(
            length: 19,
            child: TabBar(
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              isScrollable: true,
              indicator: MD2Indicator(
                indicatorHeight: 3,
                indicatorColor: Colors.blue,
                indicatorSize: MD2IndicatorSize.full,
              ),
              tabs: [
                Tab(
                  text: 'Breaking News',
                ),
                Tab(
                  text: 'International News',
                ),
                Tab(
                  text: 'Bangladesh News',
                ),
                Tab(
                  text: 'All-Division',
                ),
                Tab(
                  text: 'All-District',
                ),
                Tab(
                  text: 'Politics',
                ),
                Tab(
                  text: 'Sports',
                ),
                Tab(
                  text: 'Culture',
                ),
                Tab(
                  text: 'Technology',
                ),
                Tab(
                  text: 'Literature',
                ),
                Tab(
                  text: 'World',
                ),
                Tab(
                  text: 'Business',
                ),
                Tab(
                  text: 'Life Style',
                ),
                Tab(
                  text: 'Entertainment',
                ),
                Tab(
                  text: 'Job',
                ),
                Tab(
                  text: 'Opinion',
                ),
                Tab(
                  text: 'Reports',
                ),
                Tab(
                  text: 'Health',
                ),
                Tab(
                  text: 'Education',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            padding: EdgeInsets.only(left: 10),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: trendingNews.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Article article = trendingNews[index];
                  return TrendingContainer(
                    article: article,
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              'Latest News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildForYouContainers(),
        ],
      ),
    );
  }
}
