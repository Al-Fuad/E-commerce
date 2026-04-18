import 'package:get/get.dart';
import 'package:test_project/core/network/api_client.dart';
import 'package:test_project/features/home/data/datasources/home_remote_datasource.dart';
import 'package:test_project/features/home/data/datasources/home_remote_datasource_impl.dart';
import 'package:test_project/features/home/data/repositories/home_repository_impl.dart';
import 'package:test_project/features/home/domain/repositories/home_repository.dart';
import 'package:test_project/features/home/domain/usecases/get_all_categories_usecase.dart';
import 'package:test_project/features/home/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find<GetAllCategoriesUsecase>()),
    );

    Get.lazyPut<GetAllCategoriesUsecase>(
      () => GetAllCategoriesUsecase(Get.find<HomeRepository>()),
    );

    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(
        homeRemoteDatasource: Get.find<HomeRemoteDatasource>(),
      ),
    );

    Get.lazyPut<HomeRemoteDatasource>(
      () => HomeRemoteDatasourceImpl(dio: Get.find<ApiClient>().dio),
    );
  }
}
