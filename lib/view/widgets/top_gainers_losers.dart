import 'package:coinmarketcup_ui_flutter/view/widgets/gainers_losers.dart';
import 'package:flutter/material.dart';

Widget TopGainersLosersCard(BuildContext context) {
  return Column(
    children: [
      ListTile(
        title: Text(
          'Top Gainers & Losers',
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
              onTap: () => print('tap top gainers'),
              child: Container(
                child: Text(
                  'Top Gainers',
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
              onTap: () => print('tap top losers'),
              child: Container(
                child: Text(
                  'Top Losers',
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
      Column(
        children: [
          GainersAndLosersCard(
            'BTC',
            'Bitcoin',
            '6.312 \$',
            Colors.green,
            '5.32%',
            true,
            context,
          ),
          GainersAndLosersCard(
            'XMR',
            'Monero',
            '312 \$',
            Colors.red,
            '-2.32%',
            false,
            context,
          ),
          GainersAndLosersCard(
            'DOGE',
            'Dogecoin',
            '0.012 \$',
            Colors.red,
            '-20.32%',
            false,
            context,
          ),
          GainersAndLosersCard(
            'LRC',
            'Litecoin',
            '20.12 \$',
            Colors.green,
            '85.32%',
            true,
            context,
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Divider(),
    ],
  );
}
