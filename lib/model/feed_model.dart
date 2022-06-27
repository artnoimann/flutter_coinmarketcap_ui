class FeedModel {
  String avatar;
  String account;
  String accountName;
  String message;
  bool verified;
  String timeAgo;
  int cntComments;
  int cntLikes;
  int cntShares;

  FeedModel({
    required this.avatar,
    required this.account,
    required this.accountName,
    required this.message,
    required this.verified,
    required this.timeAgo,
    required this.cntComments,
    required this.cntLikes,
    required this.cntShares,
  });
}
