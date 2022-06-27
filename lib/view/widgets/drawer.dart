import 'package:coinmarketcup_ui_flutter/data/drawer_menu_list.dart';
import 'package:coinmarketcup_ui_flutter/model/drawer_menu.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/expansion_element.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CoinDrawer extends StatefulWidget {
  @override
  State<CoinDrawer> createState() => _CoinDrawerState();
}

class _CoinDrawerState extends State<CoinDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_pin,
                        size: 80,
                      ),
                      InkWell(
                        child: Text(
                          'Log In / Register',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/crystall.png',
                            width: 21,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.card_giftcard,
                            size: 21,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.notifications,
                            size: 21,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    // color: Colors.green,
                    ),
              ),
              Column(
                children: [
                  Container(
                    height: 500,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    // color: Colors.green,
                    child: SizedBox(height: 0, child: ExpansionElement()),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Follow us',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Color(0xffd6d6d6), spreadRadius: 1),
                            ],
                          ),
                          child: Icon(
                            EvaIcons.twitter,
                            size: 19,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Color(0xffd6d6d6), spreadRadius: 1),
                            ],
                          ),
                          child: Icon(
                            EvaIcons.facebook,
                            size: 19,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Color(0xffd6d6d6), spreadRadius: 1),
                            ],
                          ),
                          child:   BrandLogo(BrandLogos.google, size: 19,),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
