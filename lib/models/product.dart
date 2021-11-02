class Product {
  final int id;
  final String name;
  final String imagePath;
  final String description;
  final int price;

  Product.withInfo(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.description,
      required this.price});
}
