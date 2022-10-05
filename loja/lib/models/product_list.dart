import 'package:flutter/cupertino.dart';
import 'package:loja/data/dummy_data.dart';
import 'package:loja/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _itens = dummyProducts;
  List<Product> get itens => [..._itens];
  void addProduct(Product product) {
    _itens.add(product);
    notifyListeners();
  }
}
