import 'package:flutter/material.dart';
import 'package:layout_listview_app/models/product.dart';
import 'package:layout_listview_app/utils/services/cart_service.dart';
import 'package:layout_listview_app/utils/services/product_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return _buildHomePage(context, title);
  }
}

Widget _buildHomePage(BuildContext context, String appBarTitle) {
  var productList = ProductService().getProducts();
  return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: _buildListView(context, productList));
}

Widget _buildListView(BuildContext context, List<Product> products) {
  return ListView.builder(
    itemCount: products.length,
    itemBuilder: (BuildContext context, int index) {
      return _createProductContainer(context, products[index]);
    },
  );
}

Widget _createProductContainer(BuildContext context, Product product) {
  return Container(
      margin: const EdgeInsets.all(5),
      color: Colors.blue,
      height: 140,
      child: Card(
        child: Row(children: [
          Image.asset(product.imagePath),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Align row center
            children: [
              Text(product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
              Text(product.description),
              ElevatedButton(
                onPressed: () {
                  CartService().addToCart(context, product);
                },
                child: Text(
                  "Add to Cart\n\$" + product.price.toString(),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              )
            ],
          )),
        ]),
      ));
}
