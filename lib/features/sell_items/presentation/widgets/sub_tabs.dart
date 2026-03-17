import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/sell_items/presentation/controllers/sell_items_controller.dart';

class SubTabs extends StatelessWidget {
  const SubTabs({super.key, required this.controller});

  final SellItemsController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.selectedBidItemsTabIndex.value = 0;
            },
            child: Obx(
              () => Text(
                "Request Bid",
                style: TextStyle(
                  color: controller.selectedBidItemsTabIndex.value == 0
                      ? AppColor.primaryColor
                      : AppColor.textColor,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              controller.selectedBidItemsTabIndex.value = 1;
            },
            child: Obx(
              () => Text(
                "Accept bid",
                style: TextStyle(
                  color: controller.selectedBidItemsTabIndex.value == 1
                      ? AppColor.primaryColor
                      : AppColor.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
