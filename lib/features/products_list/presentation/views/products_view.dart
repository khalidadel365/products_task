import 'package:flutter/material.dart';
import 'package:products_task/features/products_list/presentation/views/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: SafeArea(
          child: ProductsViewBody()
      ,),
    );
  }
}
