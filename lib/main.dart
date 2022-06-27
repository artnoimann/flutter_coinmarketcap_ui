import 'package:coinmarketcup_ui_flutter/view/screens/clear.dart';
import 'package:coinmarketcup_ui_flutter/view/screens/init_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coinmarketcap',
      home: InitScreen(),
    );
  }
}
