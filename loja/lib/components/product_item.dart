import 'package:flutter/material.dart';

import 'package:loja/utils/routes.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color iconColor = Theme.of(context).colorScheme.secondary;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () => Navigator.of(context).pushNamed(
            AppRoutes.productDetail,
            arguments: product,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color: iconColor,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
