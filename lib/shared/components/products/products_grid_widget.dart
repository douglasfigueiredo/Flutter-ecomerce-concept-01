import 'package:flutter/material.dart';

import 'product_widget.dart';

class ProductsGridWidget extends StatelessWidget {
  final List<Map> products = [
    {
      "picture": "assets/images/products/product1.jpg",
      "title": "Pink Blouse",
      "price": "\$348,00"
    },
    {
      "picture": "assets/images/products/product2.jpg",
      "title": "Casual Man",
      "price": "\$348,00"
    },
    {
      "picture": "assets/images/products/product3.jpg",
      "title": "Salmon Blouse",
      "price": "\$348,00"
    },
    {
      "picture": "assets/images/products/product4.jpg",
      "title": "Casual Woman",
      "price": "\$348,00"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      childAspectRatio: 0.5,
      padding: EdgeInsets.symmetric(horizontal: 20),
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      shrinkWrap: true,
      children: products
          .map(
            (product) => Center(
              child: ProductWidget(
                picture: product["picture"],
                title: product["title"],
                price: product["price"],
              ),
            ),
          )
          .toList(),
    );
  }
}

// children: List.generate(4, (index) {
// return Center(
//   child: ProductWidget(),
// );
//       }).toList(),
