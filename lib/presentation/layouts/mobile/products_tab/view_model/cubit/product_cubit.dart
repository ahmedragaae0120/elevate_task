import 'package:bloc/bloc.dart';
import 'package:elevate_task/data/datasource_impl/remote/products_datasource_impl.dart';
import 'package:elevate_task/data/models/product_model/product_Response.dart';

import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  @factoryMethod
  ProductCubit(this.productsDatasourceImpl) : super(ProductInitial());

  ProductsDatasourceImpl productsDatasourceImpl;
  getAllProducts() async {
    emit(ProductLoadingState());
    var result = await productsDatasourceImpl.getAllproduct();
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
