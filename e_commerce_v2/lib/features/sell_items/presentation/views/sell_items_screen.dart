import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/enums/item_enum.dart';
import 'package:test_project/core/models/items_model.dart';
import 'package:test_project/features/sell_items/presentation/controllers/sell_items_controller.dart';
import 'package:test_project/features/sell_items/presentation/widgets/sub_tabs.dart';

class SellItemsScreen extends StatelessWidget {
  const SellItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SellItemsController>();

    final List<String> tabs = [
      "All Products",
      "Pending",
      "Completed",
      "Cancelled",
      "Bid List",
    ];

    final items = [
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.pending,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.delivered,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.pending,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.delivered,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.pending,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.delivered,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.pending,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.delivered,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.cancelled,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.delivered,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.bidList,
        quantity: 1,
      ),
      ItemsModel(
        title: "Man Exclusive T-Shirt",
        image: AppAssets.demoProduct,
        description: "Size XL (New Condition)",
        price: 100,
        status: ItemEnum.bidList,
        quantity: 1,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            controller.selectedTabIndex.value != 4
                ? "Selling Items"
                : "Bid List",
          ),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SizedBox(
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: GestureDetector(
                    onTap: () => controller.onTabTapped(index),
                    child: Obx(
                      () => Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: controller.selectedTabIndex.value == index
                              ? AppColor.primaryColor.withOpacity(0.2)
                              : AppColor.lightGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              color: controller.selectedTabIndex.value == index
                                  ? AppColor.primaryColor
                                  : AppColor.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Obx(
              () => IndexedStack(
                index: controller.selectedTabIndex.value,
                children: [
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) => ItemTile(
                      title: items[index].title,
                      image: items[index].image,
                      price: items[index].price,
                      status: items[index].status,
                      quantity: items[index].quantity,
                    ),
                  ),
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      if (items[index].status == ItemEnum.pending) {
                        return ItemTile(
                          title: items[index].title,
                          image: items[index].image,
                          price: items[index].price,
                          status: items[index].status,
                          quantity: items[index].quantity,
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  ),
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      if (items[index].status == ItemEnum.delivered) {
                        return ItemTile(
                          title: items[index].title,
                          image: items[index].image,
                          price: items[index].price,
                          status: items[index].status,
                          quantity: items[index].quantity,
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  ),
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      if (items[index].status == ItemEnum.cancelled) {
                        return ItemTile(
                          title: items[index].title,
                          image: items[index].image,
                          price: items[index].price,
                          status: items[index].status,
                          quantity: items[index].quantity,
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  ),
                  Column(
                    children: [
                      SubTabs(controller: controller),
                      Divider(),
                    ],
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

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.status,
    required this.quantity,
  });

  final String title;
  final String image;
  final double price;
  final ItemEnum status;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image, width: 70, height: 50, fit: BoxFit.cover),
      title: Text(title),
      subtitle: Text(
        '\$${price.toStringAsFixed(2)}',
        style: TextStyle(color: AppColor.primaryColor),
      ),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: status == ItemEnum.delivered
              ? Colors.green[100]
              : status == ItemEnum.pending
              ? Colors.orange[100]
              : status == ItemEnum.cancelled
              ? Colors.red[100]
              : Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          status == ItemEnum.delivered
              ? "COMPLETED"
              : status.name.toUpperCase(),
          style: TextStyle(
            color: status == ItemEnum.delivered
                ? Colors.green
                : status == ItemEnum.pending
                ? Colors.orange
                : status == ItemEnum.cancelled
                ? Colors.red
                : Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
