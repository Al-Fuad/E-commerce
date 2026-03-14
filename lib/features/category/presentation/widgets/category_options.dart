import 'package:flutter/material.dart';
import 'package:test_project/features/category/presentation/widgets/option.dart';

class CategoryOptions extends StatelessWidget {
  const CategoryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 12, bottom: 12, left: 20),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Option(
            isFilter: index == 0,
            title: index == 0 ? "Filter" : "Subcategory $index",
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
