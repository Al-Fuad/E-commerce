import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/features/bought_bid_items/presentation/controllers/bought_bid_items_controller.dart';

class BoughtBidItemsScreen extends StatefulWidget {
  const BoughtBidItemsScreen({super.key, this.isBidList = false});

  final bool isBidList;

  @override
  State<BoughtBidItemsScreen> createState() => _BoughtBidItemsScreenState();
}

class _BoughtBidItemsScreenState extends State<BoughtBidItemsScreen> {
  final controller = Get.find<BoughtBidItemsController>();
  
  @override
  void initState() {
    super.initState();
    controller.selectedTabIndex.value = widget.isBidList ? 4 : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.selectedTabIndex.value != 4 ? "Bought Items" : "Bid List",
        ),
        centerTitle: true,
      ),
    );
  }
}
