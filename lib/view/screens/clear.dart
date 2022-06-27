import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Clear extends StatefulWidget {
  const Clear({Key? key}) : super(key: key);

  @override
  State<Clear> createState() => _ClearState();
}

class _ClearState extends State<Clear> {
  Future checkOnboardingSeen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen', false);
  }

  @override
  void initState() {
    super.initState();
    checkOnboardingSeen();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
