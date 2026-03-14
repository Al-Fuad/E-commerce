import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/product/presentation/controllers/product_controller.dart';
import 'package:test_project/features/product/presentation/widgets/product_details_container.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.isBid});

  final bool isBid;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product Description",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 15),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies lacinia, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc.",
          style: TextStyle(fontSize: 14, color: AppColor.textColor),
        ),
        SizedBox(height: 24),
        ProductDetailsContainer(),
        SizedBox(height: 24),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shield_moon_outlined,
                  size: 16,
                  color: AppColor.green,
                ),
                SizedBox(width: 12),
                Text(
                  "If a scam occurs, their money is protected.",
                  style: TextStyle(fontSize: 14, color: AppColor.textColor),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 32),
        SizedBox(
          height: 60,
          child: isBid
              ? Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Market Price: \$25.00",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColor.textColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text.rich(
                            TextSpan(
                              text: "Last bid Price: \$20.00 ",
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColor.textColor,
                              ),
                              children: [
                                TextSpan(
                                  text: "(10% discount)",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.hintColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    AppButton(
                      text: "Place a Bid",
                      size: Size(100, 56),
                      onPressed: () {
                        controller.isPlaceBid.value = true;
                      },
                    ),
                  ],
                )
              : AppButton(text: "Buy Now", onPressed: () {}),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
