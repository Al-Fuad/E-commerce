import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/notifications/presentation/controllers/notifications_controller.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notTabs = ["All", "Recent", "Earlier"];
    final controller = Get.find<NotificationsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: notTabs.length,
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
                            notTabs[index],
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
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.notifications, color: Colors.white),
                    ),
                    title: Text("New Product Available"),
                    subtitle: Text(
                      "A new product has been added to the catalog.",
                    ),
                    trailing: Text("2h ago"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
