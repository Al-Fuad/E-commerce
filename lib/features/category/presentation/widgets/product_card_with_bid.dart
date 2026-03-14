import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/product/presentation/views/product_screen.dart';

class ProductCardWithBid extends StatelessWidget {
  const ProductCardWithBid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/demo_product.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Man Exclusive T-Shirt",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "\$ 25.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Size XL (New Condition)",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 16,
                color: AppColor.grey,
              ),
              SizedBox(width: 4),
              Text("New York, USA"),
              SizedBox(width: 8),
              Icon(
                Icons.timer_sharp,
                size: 16,
                color: AppColor.grey,
              ),
              Text(
                "Aug 6 ,13:55",
                style: TextStyle(fontSize: 12),
              ),
              Spacer(),
              Text(
                "12h :12m :30s",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
          Divider(height: 30, thickness: 1),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    Get.to(() => ProductScreen(isBid: true));
                  },
                  text: "Bid Now",
                  color: AppColor.white,
                  textColor: AppColor.primaryColor,
                  isBordered: true,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: AppButton(
                  onPressed: () {
                    Get.to(() => ProductScreen());
                  },
                  text: "Buy Now",
                  textColor: AppColor.white,
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
