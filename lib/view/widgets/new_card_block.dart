import 'package:coinmarketcup_ui_flutter/view/widgets/news_card_element.dart';
import 'package:flutter/material.dart';

Widget NewsCardBlock(BuildContext context) {
  return Column(
    children: [
      ListTile(
        title: Text(
          'News',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          'See more',
          style: TextStyle(
            fontSize: 14,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 15,
          bottom: 10,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () => print('tap latest'),
              child: Container(
                child: Text(
                  'Latest',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => print('tap alexandria'),
              child: Container(
                child: Text(
                  'Alexandria',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
              ),
            ),
          ],
        ),
      ),
      NewsCardElement(
        'https://images.unsplash.com/photo-1624996379697-f01d168b1a52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y3J5cHRvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        'Overstock converts preferred stock token to common stock',
        'BBCcrypto',
        '35 min',
        context,
      ),
      NewsCardElement(
        'https://images.unsplash.com/photo-1620321023374-d1a68fbc720d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNyeXB0b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
        'Futures: The Future of the Crypto Space, and a New Battlefield for Crypto Exchanges',
        'NYTcrypto',
        '45 min',
        context,
      ),
      NewsCardElement(
        'https://images.unsplash.com/photo-1621932953986-15fcf084da0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2344&q=80',
        'Lark Davis: Number Of Addresses Holding At Least One Bitcoin (BTC)',
        'Coinmarket',
        '55 min',
        context,
      ),
      NewsCardElement(
        'https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
        'Binance Launches Institutional, CoinFLEX Pauses Withdrawals',
        'Times',
        '57 min',
        context,
      ),
    ],
  );
}
