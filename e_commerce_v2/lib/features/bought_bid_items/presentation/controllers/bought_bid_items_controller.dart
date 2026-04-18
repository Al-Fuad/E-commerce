import 'package:get/get.dart';

class BoughtBidItemsController extends GetxController {
  final RxInt selectedTabIndex = 0.obs;
  final RxInt selectedBidItemsTabIndex = 0.obs;

  void onTabTapped(int index) {
    selectedTabIndex.value = index;
  }

  void onBidItemsTabTapped(int index) {
    selectedBidItemsTabIndex.value = index;
  }
}
