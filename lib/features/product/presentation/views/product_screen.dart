import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/product/presentation/controllers/product_controller.dart';
import 'package:test_project/features/product/presentation/widgets/bid.dart';
import 'package:test_project/features/product/presentation/widgets/product_description.dart';
import 'package:test_project/features/product/presentation/widgets/product_header.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    this.isBid = false,
    this.isBidPlaced = false,
  });

  final bool isBid;
  final bool isBidPlaced;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductController>();
    final categoryTitle =
        Get.arguments['categoryTitle'] as String? ?? "Category";
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.offNamedUntil(
              AppRoutes.category,
              (route) => route.settings.name == AppRoutes.category,
              arguments: {"title": categoryTitle},
            );
          },
        ),
        title: Text("Product"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductHeader(),
                  SizedBox(height: 8),
                  Obx(
                    () => controller.isBidButtonPressed.value
                        ? controller.isBidPlaced.value
                              ? ProductDescription(isBid: isBid)
                              : Bid()
                        : ProductDescription(isBid: isBid),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
