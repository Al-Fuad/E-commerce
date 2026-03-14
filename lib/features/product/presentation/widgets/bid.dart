import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/product/presentation/controllers/product_controller.dart';
import 'package:test_project/features/product/presentation/widgets/bid_placed.dart';

class Bid extends StatelessWidget {
  const Bid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductController>();
    final bidPriceController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total Bid",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 15),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/2.jpg",
            ),
          ),
          title: Text(
            "Seller Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: Text("1hr ago"),
          trailing: Text(
            "\$20.00",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        Divider(color: AppColor.lightGrey),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/2.jpg",
            ),
          ),
          title: Text(
            "Seller Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: Text("1hr ago"),
          trailing: Text(
            "\$20.00",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        Divider(color: AppColor.lightGrey),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/2.jpg",
            ),
          ),
          title: Text(
            "Seller Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: Text("1hr ago"),
          trailing: Text(
            "\$20.00",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        Divider(color: AppColor.lightGrey),
        SizedBox(height: 32),
        AppTextField(
          controller: bidPriceController,
          hint: "Enter your bid amount",
        ),
        SizedBox(height: 12),
        AppButton(text: "Bid Now", onPressed: () {
          controller.isBidPlaced.value = true;
          Get.to(() => BidPlaced());
        }),
        SizedBox(height: 40),
      ],
    );
  }
}
