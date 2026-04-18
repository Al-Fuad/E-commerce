import 'package:flutter/material.dart';
import 'package:test_project/features/category/presentation/widgets/category_options.dart';
import 'package:test_project/features/category/presentation/widgets/product_card_with_bid.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryOptions(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latest products",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          ProductCardWithBid(title: title),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 12),
                      itemCount: 7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
