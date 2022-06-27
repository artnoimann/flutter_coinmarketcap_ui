import 'package:coinmarketcup_ui_flutter/view/widgets/gainers_losers.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/new_card_block.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/news_card_element.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/top_gainers_losers.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    /* Clear the search field */
                                  },
                                ),
                                hintText: 'Search Coins & Exchanges...',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TopGainersLosersCard(context),
              NewsCardBlock(context),
            ],
          ),
        ),
      ),
    );
  }
}
