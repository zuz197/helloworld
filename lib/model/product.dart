class Product {
  int id;
  String title;
  String des;
  double price;
  String category;
  String image;
  double rating;
  int count;

  Product({
    required this.id,
    required this.title,
    required this.des,
    required this.price,
    required this.category,
    required this.image,
    required this.rating,
    required this.count,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      des: json['description'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      category: json['category'] ?? '',
      image: json['image'] ?? '',
      rating: (json['rating']?['rate'] ?? 0).toDouble(),
      count: (json['rating']?['count'] ?? 0).toInt(),
    );
  }
}
