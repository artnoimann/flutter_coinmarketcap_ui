import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

GainersAndLosersCard(
  String codeCoin,
  String nameCoin,
  String price,
  Color colorPrice,
  String percent,
  bool positive,
  BuildContext context,
) {
  String arrow = (positive ? '▲ ' : '▼ ');
  return SizedBox(
    height: 40,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      width: MediaQuery.of(context).size.width * 0.99,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.60,
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Image.network(
                  'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@bea1a9722a8c63169dcc06e86182bf2c55a76bbc/32/color/${codeCoin.toLowerCase()}.png',
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  nameCoin,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  codeCoin,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.33,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: positive ? Colors.green[50] : Colors.red[50],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    arrow + percent,
                    style: TextStyle(
                        color: colorPrice,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
