import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class Option extends StatelessWidget {
  const Option({super.key, this.isFilter = false, required this.title});

  final bool isFilter;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: [
            if (isFilter)
              Icon(Icons.filter_list, size: 16, color: AppColor.grey),
            if (isFilter) SizedBox(width: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
