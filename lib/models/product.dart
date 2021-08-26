class Product {
  bool isFavorite;
  final String photo;
  final String name;
  final String description;
  final String price;
  final int time;
  final String portion;

  Product({
    this.isFavorite = false,
    required this.photo,
    required this.name,
    required this.description,
    required this.price,
    required this.time,
    required this.portion,
  });
}
