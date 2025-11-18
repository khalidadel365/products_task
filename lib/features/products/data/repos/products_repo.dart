import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/product_model.dart';

abstract class ProductsRepo
{
  Future<Either< Failure ,List<ProductModel>>> fetchProducts();

}