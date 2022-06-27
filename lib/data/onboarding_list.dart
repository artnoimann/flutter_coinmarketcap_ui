import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

List<PageViewModel> listPagesViewModel = [
  PageViewModel(
    title: "Welcome",
    body:
    "Coinmarketcup is a reliable and accurate source of data on market capitalization, rates and cryptocurrencies.",
    image: Image.asset('assets/logo.jpeg', width: 90,),
    decoration: const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(bottom: 100),
    ),
  ),
  PageViewModel(
    title: "The stock market data will be with you",
    body:
    "The data you trust is in the palm of your hand!",
    image: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_ydl0uM.json'),
    decoration: const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    ),
  ),
  PageViewModel(
    title: "Manage your portfolio simply and easily",
    body:
    "Keep track of all your assets in one app",
    image: Image.asset('assets/thirtdscreen.png'),
    decoration: const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    ),
  ),PageViewModel(
    title: "Synchronize your portfolio and signals on all devices",
    body:
    "Synchronize all settings on all devices in one moment",
    image: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_gzrdw2la.json'),
    decoration: const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    ),
  ),
];