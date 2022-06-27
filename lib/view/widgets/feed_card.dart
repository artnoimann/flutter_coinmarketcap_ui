import 'package:coinmarketcup_ui_flutter/model/feed_model.dart';
import 'package:flutter/material.dart';

FeedCard(
  FeedModel feedElement, int index, int end
) {
  return Column(
    children: [
      ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            feedElement.avatar,
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          children: [
            Text(
              feedElement.accountName + ' ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            feedElement.verified
                ? Icon(
                    Icons.verified,
                    color: Colors.blueAccent,
                  )
                : SizedBox(
                    width: 0,
                  ),
            Text(
              ' • ' + feedElement.timeAgo,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
        subtitle: RichText(
          text: TextSpan(
            text: feedElement.account + '\n',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            children: [
              WidgetSpan(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 8,
                  ),
                  child: Text(
                    feedElement.message,
                  ),
                ),
              ),
            ],
          ),
        ),
        trailing: Icon(Icons.more_horiz),
        isThreeLine: false,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            // width: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_outlined,
                  color: Colors.grey,
                  size: 19,
                ),
                SizedBox(
                  width: 5,
                ),
                (feedElement.cntComments > 0)
                    ? Text(
                  feedElement.cntComments.toString(),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
                    : Text(
                  'Comment',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 19,
                ),
                SizedBox(
                  width: 5,
                ),
                (feedElement.cntLikes > 0)
                    ? Text(
                  feedElement.cntLikes.toString(),
                  style: TextStyle(color: Colors.grey),
                ) : Text(
                  'Like',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  color: Colors.grey,
                  size: 19,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  feedElement.cntShares.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
      Divider(),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
