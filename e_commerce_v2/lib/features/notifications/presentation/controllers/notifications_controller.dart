import 'package:get/get.dart';

class NotificationsController extends GetxController {
  final RxInt selectedTabIndex = 0.obs;

  void onTabTapped(int index) {
    selectedTabIndex.value = index;
  }
}