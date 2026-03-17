import 'package:get/get.dart';
import 'package:test_project/features/bought_bid_items/presentation/controllers/bought_bid_items_controller.dart';

class BoughtBidItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoughtBidItemsController>(() => BoughtBidItemsController());
  }
}