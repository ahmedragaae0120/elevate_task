import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:elevate_task/data/models/product_model/product_Response.dart';

abstract class ProductsDatasourceContract {
  Future<Either<List<ProductResponse>, String>> getAllproduct();
}
