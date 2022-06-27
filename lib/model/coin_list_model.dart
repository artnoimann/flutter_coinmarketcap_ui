class CoinListModel {
  String name;
  double price;
  String imageUrl;

  CoinListModel({required this.name, required this.price, this.imageUrl = 'assets/logo.jpeg'});
}