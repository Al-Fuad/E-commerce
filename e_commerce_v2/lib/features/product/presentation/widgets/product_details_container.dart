import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.lightPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Condition"),
              Text("New", style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Size"),
              Text("XL", style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Materials"),
              Text("Cotton", style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Color"),
              Text("Red", style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Uploaded"),
              Text("2 days ago", style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Remaining Time"),
              Text(
                "12h : 12m : 30s",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColor.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
