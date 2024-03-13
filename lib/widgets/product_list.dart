import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_1/controllers/global_controller.dart';
import 'package:getx_demo_1/models/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) => ListView.builder(
        itemBuilder: (__, index) {
          final Product product = _.products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text("USD ${product.price}"),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: product.isFavorite ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                _.onFavorite(index, !product.isFavorite);
              },
            ),
          );
        },
        itemCount: _.products.length,
      ),
    );
  }
}
