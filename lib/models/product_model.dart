class Product{
  final String name;
  final double price;
  final String imageUrl;

  const Product({required this.name, required this.price,required this.imageUrl});

  static const List<Product> products = [
    Product(name: "Ralph Lauren", price: 59.00, imageUrl: "images/brown_box.png"),
    Product(name: "Gucci Lauren", price: 49.00, imageUrl: "images/jacquemus.png"),
    Product(name: "Christian Dior", price:99.00, imageUrl: "images/christian_dior.png"),
    Product(name: "Neon Bag", price: 34.00,imageUrl: "images/neon_bag.png"),
    Product(name: "Lady Dior", price:69.00, imageUrl: "images/dior_lady_bag.png")

  ];


}