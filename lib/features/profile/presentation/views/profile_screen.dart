import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

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
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person, color: AppColor.grey),
                    title: Text(
                      "My Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.textColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.favorite, color: AppColor.grey),
                    title: Text(
                      "Favorites",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.shopping_bag, color: AppColor.grey),
                    title: Text(
                      "Bought Items",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.shopping_bag, color: AppColor.grey),
                    title: Text(
                      "Selling Items",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.gavel, color: AppColor.grey),
                    title: Text(
                      "Bid List",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.notifications, color: AppColor.grey),
                    title: Text(
                      "Notifications",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person_add_alt_1, color: AppColor.grey),
                    title: Text(
                      "Account Settings",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    shape: Border(
                      bottom: BorderSide(color: AppColor.lightGrey),
                    ),
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.language, color: AppColor.grey),
                    title: Text(
                      "Language",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.grey,
                      size: 18,
                    ),
                    onTap: () {},
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
