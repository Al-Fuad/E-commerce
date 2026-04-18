import 'package:test_project/features/home/domain/entities/home_entity.dart';
import 'package:test_project/features/home/domain/repositories/home_repository.dart';

class GetAllCategoriesUsecase {
  final HomeRepository repository;

  GetAllCategoriesUsecase(this.repository);

  Future<HomeEntity> call() async {
    return await repository.getAllCategories();
  }
}