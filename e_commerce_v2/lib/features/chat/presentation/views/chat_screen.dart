import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/chat/presentation/widget/chat_list_view.dart';
import 'package:test_project/features/chat/presentation/widget/chat_profile_header.dart';
import 'package:test_project/features/chat/presentation/widget/message_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Column(children: [ChatProfileHeader(), ChatListView()]),
      bottomNavigationBar: MessageBar(),
    );
  }
}
