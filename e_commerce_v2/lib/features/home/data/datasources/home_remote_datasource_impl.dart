import 'package:test_project/core/constants/api_constant.dart';
import 'package:test_project/features/home/data/datasources/home_remote_datasource.dart';
import 'package:test_project/features/home/data/models/home_model.dart';

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final dio;

  HomeRemoteDatasourceImpl({required this.dio});

  @override
  Future<HomeModel> getAllCategories() async {
    try {
      final response = await dio.get(ApiConstant.allCategories);
      return HomeModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
