import 'package:flutter/material.dart';
import 'package:loja/components/product_item.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/product_list.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts = provider.itens;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
