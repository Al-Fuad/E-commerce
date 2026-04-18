import 'package:get/get.dart';
import 'package:test_project/features/wishlist/presentation/controllers/wishlist_controller.dart';

class WishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(() => WishlistController());
  }
}