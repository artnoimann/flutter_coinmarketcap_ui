import 'package:coinmarketcup_ui_flutter/model/trends_model.dart';
import 'package:flutter/material.dart';

TrendSlot(TrendModel trendElement, int index, BuildContext context) {
  return ListTile(
    // leading: Text(index.toString(),),
    title: RichText(
      text: TextSpan(
        text: index.toString(),
        style: TextStyle(
          color: Colors.grey,
          // fontWeight: FontWeight.bold,
        ),
        children: [
          WidgetSpan(
              child: SizedBox(
            width: 20,
          )),
          TextSpan(
            text: trendElement.code,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    trailing: Text(
      trendElement.price,
      textAlign: TextAlign.right,
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}
