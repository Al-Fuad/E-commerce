import 'package:get/get.dart';
import 'package:test_project/features/chat/presentation/controllers/chat_controller.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}