import 'package:elevate_task/core/Di/di.dart';
import 'package:elevate_task/core/utlis/text_styles.dart';
import 'package:elevate_task/presentation/layouts/mobile/products_tab/view_model/cubit/product_cubit.dart';
import 'package:elevate_task/presentation/layouts/mobile/products_tab/widgets/products_gridView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductCubit>(
      create: (context) => getIt<ProductCubit>()..getAllProducts(),
      child: BlocBuilder<ProductCubit, ProductState>(
        buildWhen: (previous, current) {
          if (current is ProductSuccessState ||
              current is ProductLoadingState ||
              current is ProductErrorState) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is ProductSuccessState) {
            return ProductsGridview(products: state.productResponse);
          }
          if (state is ProductErrorState) {
            return Center(
                child:
                    Text(state.error, style: TextStyles.productTitleTextStyle));
          }

          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
