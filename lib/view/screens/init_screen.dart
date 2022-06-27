import 'package:coinmarketcup_ui_flutter/data/bottom_navigation_bar.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/onboarding_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int _page = 0;
  final bool _loadingScreen = true;
  late PageController pageController;

  Future checkOnboardingSeen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (!seen) {
      await prefs.setBool('seen', true);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const OnboardignScreen(),
        ),
      );
    }
    // await prefs.setBool('seen', false);
  }

  @override
  void initState() {
    super.initState();
    checkOnboardingSeen();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoinDrawer(),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: routesBottomNavigationBar,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: navigationTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vibration),
            label: 'Gravity',
          ),
        ],
      ),
    );
  }
}
