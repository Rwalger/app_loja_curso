import 'package:flutter/material.dart';

class ProductsOverviwPage extends StatefulWidget {
  const ProductsOverviwPage({Key? key}) : super(key: key);

  @override
  State<ProductsOverviwPage> createState() => _ProductsOverviwPageState();
}

class _ProductsOverviwPageState extends State<ProductsOverviwPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Minha Loja')),
      ),
    );
  }
}
