import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/product/presentation/controllers/product_controller.dart';
import 'package:test_project/features/product/presentation/widgets/bid.dart';
import 'package:test_project/features/product/presentation/widgets/product_description.dart';

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
    final categoryTitle = Get.arguments['categoryTitle'] as String? ?? "Category";
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

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final carouselController = CarouselSliderController();
    final controller = Get.find<ProductController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AppAssets.demoProduct,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AppAssets.demoProduct,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AppAssets.demoProduct,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  controller.updateImageIndex(index);
                },
              ),
            ),
            Positioned(
              bottom: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                      onTap: () {
                        carouselController.animateToPage(index);
                      },
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: controller.currentImageIndex == index
                                ? AppColor.primaryColor
                                : AppColor.lightPrimaryColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/1.jpg",
            ),
          ),
          title: Text("Seller Name"),
          subtitle: Text("300 Items"),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "Message Seller",
              style: TextStyle(color: AppColor.white),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: AppColor.lightGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("Men", style: TextStyle(color: AppColor.green)),
        ),
        SizedBox(height: 8),
        Text(
          "Men Exclusive T-Shirt",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.location_on, size: 12, color: AppColor.hintColor),
            SizedBox(width: 4),
            Text(
              "Switzerland",
              style: TextStyle(
                color: AppColor.hintColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: "\$25.00",
            style: TextStyle(
              color: controller.isBidPlaced.value
                  ? AppColor.hintColor
                  : AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: controller.isBidPlaced.value ? 20 : 24,
              decoration: controller.isBidPlaced.value
                  ? TextDecoration.lineThrough
                  : null,
            ),
            children: [
              if (controller.isBidPlaced.value)
                TextSpan(
                  text: " \$20.00",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
                ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
