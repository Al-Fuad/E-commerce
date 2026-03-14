import 'package:flutter/material.dart';
import 'package:test_project/features/home/presentation/widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductCard(isFull: true),
            ProductCard(isFull: true),
            ProductCard(isFull: true),
          ],
        ),
      ),
    );
  }
}
