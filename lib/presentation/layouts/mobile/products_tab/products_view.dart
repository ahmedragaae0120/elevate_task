import 'package:elevate_task/presentation/layouts/mobile/products_tab/widgets/products_body.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsBody(),
    );
  }
}
