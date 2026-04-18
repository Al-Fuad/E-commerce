import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, this.isFull = false});

  final bool isFull;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.product, arguments: {"isBid": false});
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColor.white,
        elevation: 0.1,
        child: Container(
          width: isFull ? null : 190,
          height: isFull ? 350 : null,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      AppAssets.demoProduct,
                      width: isFull ? double.infinity : 170,
                      height: isFull ? 200 : null,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Man Exclusive T-Shirt",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text("Size XL (New Condition)", style: TextStyle(fontSize: 10)),
              SizedBox(height: 5),
              Text(
                "Aug 6 ,13:55 (12h :12m :30s)",
                style: TextStyle(fontSize: 12),
              ),
              Divider(height: 30, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$25.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 20,

                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
