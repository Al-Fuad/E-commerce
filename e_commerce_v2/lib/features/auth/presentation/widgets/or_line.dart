import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class OrLine extends StatelessWidget {
  const OrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(child: Divider(indent: 20.0, endIndent: 10.0, thickness: 1)),
        Text("OR", style: TextStyle(color: AppColor.grey)),
        Expanded(child: Divider(indent: 10.0, endIndent: 20.0, thickness: 1)),
      ],
    );
  }
}
