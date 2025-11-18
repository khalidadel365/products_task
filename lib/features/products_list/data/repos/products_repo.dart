import 'package:dartz/dartz.dart';
import 'package:products_task/features/products_list/data/models/product_model.dart';

import '../../../../core/errors/failures.dart';

abstract class ProductsRepo
{
  Future<Either< Failure ,List<ProductModel>>> fetchProducts();

}