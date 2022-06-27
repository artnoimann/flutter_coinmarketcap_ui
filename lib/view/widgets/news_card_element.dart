import 'package:flutter/material.dart';

Widget NewsCardElement(
  String img,
  String textNews,
  String source,
  String timeAgo,
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10,),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            img,
            width: 80,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          textNews + '\n',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          source + ' • ' + timeAgo,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
