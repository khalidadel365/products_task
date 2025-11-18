import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_task/features/products_list/data/repos/products_repo.dart';
import 'package:products_task/features/products_list/data/repos/products_repo_imp.dart';
import 'package:products_task/features/products_list/presentation/manager/products_view_cubit/products_view_cubit.dart';
import 'package:products_task/features/products_list/presentation/views/products_view.dart';

import 'core/utilities/api_service.dart';
import 'core/utilities/sevice_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const ProductsTask());
}

class ProductsTask extends StatelessWidget {
  const ProductsTask({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsRepoImp(ApiService()).fetchProducts();
    return BlocProvider(
      create: (context) => ProductsViewCubit(getIt.get<ProductsRepoImp>())..fetchProductsView(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProductsView()
      ),
    );
  }
}
