import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/core/routes/app_routes.dart';
import 'package:test_project/features/home/presentation/widgets/product_card.dart';
import 'package:test_project/features/home/presentation/widgets/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text("John Doe"),
                  subtitle: Row(
                    children: [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        "New York, USA",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none_rounded),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hint: Text("Search Product Name & Suppliers"),
                    filled: true,
                    fillColor: Color(0xFFF1F0EE),
                  ),
                ),
                Section(
                  title: "Categories",
                  seeAllFunction: () {
                    Get.dialog(
                      Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Icon(Icons.close),
                                  ),
                                ],
                              ),
                              Divider(height: 20),
                              SizedBox(
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        mainAxisSpacing: 12,
                                        childAspectRatio: 0.9,
                                      ),
                                  itemCount: AppAssets.categoryIcons.length,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(
                                            AppRoutes.category,
                                            arguments: {
                                              "title": AppAssets
                                                  .categoryNames[index],
                                            },
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF1F0EE),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Image.asset(
                                                AppAssets.categoryIcons[index],
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              AppAssets.categoryNames[index],
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 75,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.category,
                            arguments: {
                              "title": AppAssets.categoryNames[index],
                            },
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F0EE),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                AppAssets.categoryIcons[index],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              AppAssets.categoryNames[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, _) => SizedBox(width: 20),
                      itemCount: AppAssets.categoryIcons.length,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => Section(
                    title: "Fashoin Products",
                    seeAllFunction: () {
                      Get.toNamed(
                        AppRoutes.category,
                        arguments: {"title": "Fashoin"},
                      );
                    },
                    child: SizedBox(
                      height: 280,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ProductCard(),
                        separatorBuilder: (context, _) => SizedBox(width: 12),
                        itemCount: AppAssets.categoryIcons.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
