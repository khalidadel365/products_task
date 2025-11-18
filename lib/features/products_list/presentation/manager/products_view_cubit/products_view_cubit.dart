import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:products_task/features/products_list/data/repos/products_repo.dart';
import 'package:products_task/features/products_list/presentation/manager/products_view_cubit/products_view_states.dart';


class ProductsViewCubit extends Cubit<ProductsViewStates> {
  ProductsViewCubit(this.productsRepo) : super(ProductsViewInitial());

  final ProductsRepo productsRepo;

  Future<void> fetchProductsView() async {
    emit(ProductsViewLoading());
    var result = await productsRepo.fetchProducts();
    result.fold((failure){
      emit(ProductsViewFailure(failure.errorMessage));
    }, (products){
      emit(ProductsViewSuccess(products));
    });
  }
}
