import 'dart:math';
import 'package:coinmarketcup_ui_flutter/view/screens/detail_coin_screen.dart';
import 'package:coinmarketcup_ui_flutter/view/widgets/chart_line_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

MarketCardCoin(String coinname, double price, int number, BuildContext context) {
  Random randArrow = Random();
  bool boolArrow = randArrow.nextDouble() <= 0.5;

  Random randPercentObj = Random();
  int randPercent = randPercentObj.nextInt(100);

  return InkWell(
    onTap: () {
      print('321312');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailCoinScreen(
            coinname: coinname,
            price: price,
            index: number,
            positive: boolArrow,
          ),
        ),
      );
    },
    child: Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Image.network(
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@bea1a9722a8c63169dcc06e86182bf2c55a76bbc/32/color/${coinname.toLowerCase()}.png'),
        SizedBox(
          width: 135,
          child: ListTile(
            title: Text(
              coinname,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  RoundedBackgroundTextSpan(
                    text: number.toString(),
                    backgroundColor: Colors.black12,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      height: 1.4,
                    ),
                    outerRadius: 4.0,
                  ),
                  TextSpan(
                    text: '  $coinname',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  boolArrow
                      ? const TextSpan(
                          text: ' ▼ ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            backgroundColor: Colors.white,
                          ),
                        )
                      : const TextSpan(
                          text: ' ▲ ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            backgroundColor: Colors.white,
                          ),
                        ),
                  TextSpan(
                    text: '$randPercent%',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              // border: Border.all(color: Colors.blueAccent),
              ),
          height: 40,
          width: 105,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: LineChartWidget(boolArrow),
          ),
        ),
        SizedBox(
          width: 105,
          child: ListTile(
            title: Text(
              NumberFormat.currency(locale: 'eu', symbol: '\$').format(price),
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text(
              "MCap 31,321 \$ Bn",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 8,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
