import 'package:get/get.dart';
import 'package:test_project/features/sell_items/presentation/controllers/sell_items_controller.dart';

class SellItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellItemsController>(() => SellItemsController());
  }
}