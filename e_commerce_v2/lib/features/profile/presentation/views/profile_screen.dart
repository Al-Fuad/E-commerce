import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/core/routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              shape: Border(bottom: BorderSide(color: AppColor.lightGrey)),
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                ),
              ),
              title: Text("John Doe"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("@johndoe"),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileTile(
                    title: "My Profile",
                    icon: Icons.person,
                    onTap: () {},
                  ),
                  ProfileTile(
                    title: "Favorites",
                    icon: Icons.favorite,
                    onTap: () {},
                  ),
                  ProfileTile(
                    title: "Bought Items",
                    icon: Icons.shopping_bag,
                    onTap: () {
                      Get.toNamed(AppRoutes.boughtBidItems);
                    },
                  ),
                  ProfileTile(
                    title: "Selling Items",
                    icon: Icons.shopping_bag,
                    onTap: () {
                      Get.toNamed(AppRoutes.sellingItems);
                    },
                  ),
                  ProfileTile(
                    title: "Bid List",
                    icon: Icons.gavel,
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.boughtBidItems,
                        arguments: {"isBidList": true},
                      );
                    },
                  ),
                  ProfileTile(
                    title: "Notifications",
                    icon: Icons.notifications,
                    onTap: () {},
                  ),
                  ProfileTile(
                    title: "Account Settings",
                    icon: Icons.person_add_alt_1,
                    onTap: () {},
                  ),
                  ProfileTile(
                    title: "Language",
                    icon: Icons.language,
                    onTap: () {
                      Get.toNamed(AppRoutes.language);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: Border(bottom: BorderSide(color: AppColor.lightGrey)),
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColor.grey),
      title: Text(
        title,
        style: TextStyle(
          color: AppColor.textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: AppColor.grey, size: 18),
      onTap: onTap,
    );
  }
}
