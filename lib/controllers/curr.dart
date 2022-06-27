import 'dart:convert';

import 'package:coinmarketcup_ui_flutter/model/coin_list_model.dart';
import 'package:http/http.dart' as http;

class Currency {
  final List<String> cryptoList = [
    'BTC',
    'ETH',
    'LTC',
    'USDT',
    'BNB',
    'XRP',
  ];

  final List<String> currenciesList = [
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'GBP',
    'HKD',
    'IDR',
    'ILS',
    'INR',
    'JPY',
    'MXN',
    'NOK',
    'NZD',
    'PLN',
    'RON',
    'RUB',
    'SEK',
    'SGD',
    'USD',
    'ZAR'
  ];

  final apiKey = '9F1E887D-5427-4748-9661-BA830634C8C0';
  final coinApiUrl = 'https://rest.coinapi.io/v1/exchangerate/';

  Future<dynamic> getCurrencies(String currencySelected) async {

    late List<CoinListModel> coinListModel = [];

    int indexFor = 0;
    for (String cripto in cryptoList) {
      String url =
          '$coinApiUrl$cripto/$currencySelected?apikey=$apiKey';

      // print(url);
      http.Response response = await http.get(
        Uri.parse(url),
      );
      if (response.statusCode == 200) {
        var decodeData = jsonDecode(response.body);
        double lastPrice = decodeData['rate'];

        coinListModel.add(CoinListModel(name: cripto, price: lastPrice));
        // criptoPrices[indexFor]['price'] = lastPrice.toStringAsFixed(0);
      } else {
        // print(response.statusCode);
        throw 'Problem with get request';
      }
      indexFor++;
    }
    return coinListModel;
  }
}
