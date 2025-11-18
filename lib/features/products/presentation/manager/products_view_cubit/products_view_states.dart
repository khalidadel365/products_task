
import '../../../data/models/product_model.dart';

sealed class ProductsViewStates {}

final class ProductsViewInitial extends ProductsViewStates {}
final class ProductsViewLoading extends ProductsViewStates {}
final class ProductsViewFailure extends ProductsViewStates {
  final String errorMessage;
  ProductsViewFailure(this.errorMessage);
}
final class ProductsViewSuccess extends ProductsViewStates {
  final List<ProductModel> products;

  ProductsViewSuccess(this.products);
}
