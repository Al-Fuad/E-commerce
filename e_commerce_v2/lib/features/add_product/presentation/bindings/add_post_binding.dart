import 'package:get/get.dart';
import 'package:test_project/features/add_product/presentation/controllers/add_post_controller.dart';

class AddPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPostController>(() => AddPostController());
  }
}
