import 'package:coinmarketcup_ui_flutter/data/drawer_menu_list.dart';
import 'package:coinmarketcup_ui_flutter/model/drawer_menu.dart';
import 'package:flutter/material.dart';

class ExpansionElement extends StatefulWidget {
  const ExpansionElement({Key? key}) : super(key: key);

  @override
  State<ExpansionElement> createState() => _ExpansionElementState();
}

class _ExpansionElementState extends State<ExpansionElement> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            drawerMenuList[index].isExpanded = !isExpanded;
          });
        },
        children: drawerMenuList.map<ExpansionPanel>((element) {
          return ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Row(
                  children: [
                    Icon(element.iconMenu),
                    SizedBox(
                      width: 7,
                    ),
                    Text(element.headerName),
                  ],
                ),
              );
            },
            body: (element.expandedName.length > 0)
                ? Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var submenu in element.expandedName)
                        Container(
                          padding: EdgeInsets.only(
                            left: 50,
                            bottom: 15,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            submenu,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                    ],
                  )
                : SizedBox(),
            isExpanded: element.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
