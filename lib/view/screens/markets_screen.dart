import 'package:coinmarketcup_ui_flutter/controllers/curr.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/detail_coin_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/login_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/my_watchlist_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/search_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/markets_coin_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  String selectedCurrency = 'USD';
  dynamic coinData = {};
  bool isWaiting = false;
  final int _page = 0;
  final bool _loadingScreen = true;
  late PageController pageController;
  bool lookWatchList = false;
  IconData iconFavotire = Icons.star_border;
  String? _selectedOption;

  void _close(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  void _showSheet(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => CupertinoActionSheet(
              title: const Text('Sort by'),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Rank";
                    });
                    _close(ctx);
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Rank ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                        // fontWeight: FontWeight.bold
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '↓',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '↑',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "% Change";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    '% Change',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Market Cap";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    'Market Cap',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Volume (24h)";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    'Volume (24h)',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Circulating Supply";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    'Circulating Supply',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Price";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    'Price',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    setState(() {
                      _selectedOption = "Name";
                    });
                    _close(ctx);
                  },
                  child: const Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => _close(ctx),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ));
  }

  @override
  void initState() {
    super.initState();
    getCurrencyData();
  }

  getCurrencyData() async {
    isWaiting = true;
    try {
      dynamic data = await Currency().getCurrencies('USD');
      isWaiting = false;
      print(data.length.toString());
      setState(() {
        coinData = data;
      });
    } catch (e) {
      print('Sorry try again');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Icon(
            Icons.person_pin,
            color: Colors.grey,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: '24h Volume ',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '\n666,12 Bn ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueAccent,
                ),
              ),
              TextSpan(
                text: '>',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginRegScreen(),
                ),
              );
            },
            child: Image.asset(
              'assets/crystall.png',
              width: 24,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search),
            color: Colors.grey,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Row(
                children: const [
                  Text(
                    'Cryptoassets',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Exchanges',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sectors',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: () {
                          if (lookWatchList == false) {
                            setState(() {
                              lookWatchList = true;
                              iconFavotire = Icons.star;
                            });
                          } else {
                            setState(() {
                              lookWatchList = false;
                              iconFavotire = Icons.star_border;
                            });
                          }
                        },
                        icon: Icon(
                          iconFavotire,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const WatchlistScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            'My Watchlists',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                        ),
                        child: Text(
                          'USD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => _showSheet(context),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: 'Sort by Rank ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '↑',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                        ),
                        child: Text(
                          '% (24h)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                        ),
                        child: Text(
                          'All Cryptocurrencies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            !lookWatchList
                ? Container(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: coinData.length,
                        itemBuilder: (context, index) {
                          return MarketCardCoin(
                              coinData[index].name,
                              coinData[index].price,
                              index + 1,
                              context,
                          );
                        },
                      ),
                    ),
                  )
                : Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Column(
                        children: [
                          const ListTile(
                            title: Text(
                              'Watch Your Favorite Cryptocurrencies',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(
                              'Left-swipe on a cryptocurrency to add it to your watchlist.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                lookWatchList = false;
                                iconFavotire = Icons.star_border;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Exit Watchlist View',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
