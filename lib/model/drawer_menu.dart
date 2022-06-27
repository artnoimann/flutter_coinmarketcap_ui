import 'package:flutter/material.dart';

class DrawerMenu {
  IconData iconMenu;
  String headerName;
  List<String>? expandedName;
  bool isExpanded;

  DrawerMenu({
    required this.iconMenu,
    required this.headerName,
    required this.expandedName,
    this.isExpanded = false,
  });
}