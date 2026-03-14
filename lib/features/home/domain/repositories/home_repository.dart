import 'package:test_project/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<HomeEntity> getAllCategories();
}