import 'package:elevate_task/presentation/layouts/mobile/products_tab/products_view.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsView(),
    );
  }
}
