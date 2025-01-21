import 'package:bloc/bloc.dart';
import 'package:elevate_task/data/datasource_contract/remote/products_datasource_contract.dart';

import 'package:elevate_task/data/models/product_model/product_Response.dart';

import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  @factoryMethod
  ProductCubit(this.productsDatasourceContract) : super(ProductInitial());

  ProductsDatasourceContract productsDatasourceContract;
  getAllProducts() async {
    emit(ProductLoadingState());
    var result = await productsDatasourceContract.getAllproduct();
    result.fold(
      (products) {
        emit(ProductSuccessState(products));
      },
      (error) {
        emit(ProductErrorState(error));
      },
    );
  }
}
