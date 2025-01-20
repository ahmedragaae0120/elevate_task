import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/api/api_endpoints.dart';
import 'package:elevate_task/core/api/api_manger.dart';
import 'package:elevate_task/data/datasource_contract/remote/products_datasource_contract.dart';
import 'package:elevate_task/data/models/product_model/product_Response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsDatasourceContract)
class ProductsDatasourceImpl extends ProductsDatasourceContract {
  ApiManger apiManger;
  @factoryMethod
  ProductsDatasourceImpl(this.apiManger);

  @override
  Future<Either<ProductResponse, String>> getAllproduct() async {
    try {
      var response =
          await apiManger.getReguest(endpoints: ApiEndpoints.productsEndPoint);
      ProductResponse productResponse = ProductResponse.fromJson(response.data);
      return Left(productResponse);
    } catch (error) {
      return Right(error.toString());
    }
  }
}
