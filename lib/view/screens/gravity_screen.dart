import 'package:coinmarketcup_ui_flutter/data/feed_list.dart';
import 'package:coinmarketcup_ui_flutter/data/trends_list.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/login_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/search_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/feed_card.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/trend_slot.dart';
import 'package:flutter/material.dart';

class GravityScreen extends StatelessWidget {
  const GravityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Feed',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginRegScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.person_pin,
              color: Colors.grey,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: feedList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return FeedCard(feedList[index], index, 2);
                },
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '🔥 Trending',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child:
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: trendsList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return TrendSlot(trendsList[index], index+1, context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: Icon(Icons.add_box, ),
      ),
    );
  }
}
