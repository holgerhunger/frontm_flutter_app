import 'package:flutter/material.dart';

import '../data_manager.dart';
import '../data_model.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;
  const MenuPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    var p = Product(id: 1, name: "Dummy Product", price: 1.25, image: "");
    var q = Product(id: 2, name: "Kalter Kaffee", price: 0.25, image: "");
    var r = Product(
      id: 3,
      name: "Dummy Product Much Larger",
      price: 2.25,
      image: "",
    );
    return ListView(
      children: [
        ProductItem(product: p, onAdd: () {}),
        ProductItem(product: q, onAdd: () {}),
        ProductItem(product: r, onAdd: () {}),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;

  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("images/black_coffee.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${product.price} €"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: FilledButton(
                    onPressed: () {
                      onAdd(product.id);
                    },
                    child: Text("Buy"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
