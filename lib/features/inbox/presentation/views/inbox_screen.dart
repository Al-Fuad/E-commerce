import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_assets.dart';
import 'package:test_project/features/chat/presentation/views/chat_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inbox"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(() => ChatScreen());
                    },
                    leading: CircleAvatar(),
                    title: Text("John Doe"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hey, how are you?"),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.demoProduct,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 1),
                            Image.asset(
                              AppAssets.demoProduct,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 1),
                            Image.asset(
                              AppAssets.demoProduct,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Text("2:30 PM"),
                  ),
                  Divider(),
                ],
              ),
              itemCount: 7,
            ),
          ],
        ),
      ),
    );
  }
}
