import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/product/presentation/views/product_screen.dart';

class BidPlaced extends StatelessWidget {
  const BidPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 200),
        child: Card(
          color: AppColor.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.green, size: 80),
                SizedBox(height: 16),
                Text(
                  "Bid Placed Successfully!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Your bid has been placed. We will notify you if you win the auction.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                SizedBox(height: 24),
                AppButton(
                  text: "Back to Product",
                  onPressed: () {
                    Get.to(() => ProductScreen(
                          isBid: false,
                          isBidPlaced: true,
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
