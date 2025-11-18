import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/products_view_cubit/products_view_cubit.dart';
import '../../manager/products_view_cubit/products_view_states.dart';
import 'custom_card.dart';


class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsViewCubit, ProductsViewStates>(
      builder: (context, state) {
        if(state is ProductsViewSuccess){
          return GridView.builder(
            itemCount: 10,
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // columns
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 0.70,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CustomCard( product: state.products[index] );
            },

          );
        }
        else if (state is ProductsViewFailure) {
          return Center(child: Text(state.errorMessage));
        }
        else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
