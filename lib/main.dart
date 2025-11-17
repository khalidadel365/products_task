import 'package:flutter/material.dart';
import 'package:products_task/features/products_list/presentation/views/products_view.dart';

void main() {
  runApp(const ProductsTask());
}

class ProductsTask extends StatelessWidget {
  const ProductsTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsView()
    );
  }
}
