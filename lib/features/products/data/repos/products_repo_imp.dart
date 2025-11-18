import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:products_task/features/products/data/repos/products_repo.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utilities/api_service.dart';
import '../models/product_model.dart';

class ProductsRepoImp implements ProductsRepo{
  final ApiService apiService;
  ProductsRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async{
    try {
      List<dynamic> data = await apiService.get(
          endPoint: 'products'
      );
      List<ProductModel> products = [];
      for(var item in data){
        try {
          products.add(ProductModel.fromMap(item));
        } on Exception catch (e) {
          print(e.toString());
        }
      }
      return right(products);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
}
}