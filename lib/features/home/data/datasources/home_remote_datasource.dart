import 'package:test_project/features/home/data/models/home_model.dart';

abstract class HomeRemoteDatasource {
  Future<HomeModel> getAllCategories();
}
