import 'package:flutter/material.dart';
import 'package:layout_listview_app/models/product.dart';

class CartService {
  void addToCart(BuildContext context, Product product) {
    _showAlert(context, "Ürün Sepete Eklendi",
        product.name + " sepete başarıyla eklendi."); //Simulation
  }

  //Private Methods

  void _showAlert(BuildContext context, String title, String message) {
    var alert = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
