import 'package:elevate_task/data/models/product_model/product_Response.dart';
import 'package:elevate_task/presentation/layouts/mobile/products_tab/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class ProductsGridview extends StatelessWidget {
  final List<ProductResponse> products;
  const ProductsGridview({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (context, index) => ProductWidget(
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
