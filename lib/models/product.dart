class Product {
  final int id;
  final String name, description;
  final double price, rate;
  bool isFavorite =
      false; // Propiedad que no debe ser modificada, por ello no es "final".

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      name: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble(),
    );
  }
}
