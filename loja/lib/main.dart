import 'package:flutter/material.dart';
import 'package:loja/models/product_list.dart';
import 'package:loja/pages/product_detail_page.dart';
import 'package:loja/pages/products_overview_page.dart';
import 'package:loja/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            secondary: Colors.deepOrange,
          ),
        ),
        home: const ProductsOverviwPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
        },
      ),
    );
  }
}
