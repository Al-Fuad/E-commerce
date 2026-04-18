import 'package:get/get.dart';
import 'package:test_project/core/network/api_client.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiClient(), permanent: true);
  }
}
