import 'package:layout_listview_app/models/product.dart';

class ProductService {
  ///This method return 5 example product.
  List<Product> getProducts() {
    return [
      Product.withInfo(
          id: 1,
          name: "Iphone 13 Pro Max",
          description: "6.7 inch screen size",
          price: 1200,
          imagePath: "assets/images/iphone13ProMax.png"),
      Product.withInfo(
          id: 2,
          name: "Samsung S21 Ultra",
          description: "6.8 inch screen size",
          price: 1100,
          imagePath: "assets/images/samsungS21Ultra.png"),
      Product.withInfo(
          id: 3,
          name: "Huawei P40 Pro",
          description: "6.58 inch screen size",
          price: 1150,
          imagePath: "assets/images/huaweiP40Pro.png"),
      Product.withInfo(
          id: 4,
          name: "Ipad Pro",
          description: "12.9 inch screen size, Apple M1 chip ",
          price: 905,
          imagePath: "assets/images/ipadPro.jpg"),
      Product.withInfo(
          id: 5,
          name: "Galaxy Tab S7",
          description: "12.4 inch screen size, Android 11",
          price: 705,
          imagePath: "assets/images/galaxyTabS7.png")
    ];
  }
}
