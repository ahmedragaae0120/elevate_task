part of 'product_cubit.dart';

abstract class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductSuccessState extends ProductState {
  List<ProductResponse> productResponse;
  ProductSuccessState(this.productResponse);
}

final class ProductLoadingState extends ProductState {}

final class ProductErrorState extends ProductState {
  String error;
  ProductErrorState(this.error);
}
