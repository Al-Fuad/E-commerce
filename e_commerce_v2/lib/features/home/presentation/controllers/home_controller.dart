import 'package:get/get.dart';
import 'package:test_project/features/home/domain/usecases/get_all_categories_usecase.dart';

class HomeController extends GetxController {
  final GetAllCategoriesUsecase getAllCategoriesUsecase;

  HomeController(this.getAllCategoriesUsecase);

  @override
  void onInit() {
    super.onInit();
    getAllCategories();
  }

  void getAllCategories() async {
    final result = await getAllCategoriesUsecase();
    print(result);
  }
}