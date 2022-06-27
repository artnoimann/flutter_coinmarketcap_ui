import 'package:coinmarketcup_ui_flutter/model/drawer_menu.dart';
import 'package:flutter/material.dart';

List drawerMenuList = [
  DrawerMenu(
    iconMenu: Icons.build_circle_outlined,
    headerName: 'Tools',
    expandedName: [
      'Submenu Tools1',
      'Submenu Tools2',
    ],
    isExpanded: true,
  ),
  DrawerMenu(
    iconMenu: Icons.settings,
    headerName: 'Settings',
    expandedName: [
      'Submenu Settings'
    ],
    isExpanded: false,
  ),
  DrawerMenu(
    iconMenu: Icons.help,
    headerName: 'Help Center',
    expandedName: [
      'SubHelp Center1',
      'SubHelp Center2',
    ],
    isExpanded: false,
  ),
  DrawerMenu(
    iconMenu: Icons.history_edu,
    headerName: 'About Us',
    expandedName: [
      'Submenu about'
    ],
    isExpanded: false,
  ),
];
