import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[ProductManager Widget] Constructor1');
  }

  Widget _buildProductItem(BuildContext context, int item) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/food.jpg',
            width: 350,
            fit: BoxFit.fitHeight,
          ),
          Text(products[item])
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No products found,please add some'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }
}
