import 'package:get/get.dart';
import 'package:test_project/features/inbox/presentation/controllers/inbox_controller.dart';

class InboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InboxController>(() => InboxController());
  }
}
