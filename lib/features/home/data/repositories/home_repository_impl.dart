import 'package:test_project/features/home/data/datasources/home_remote_datasource.dart';
import 'package:test_project/features/home/domain/entities/home_entity.dart';
import 'package:test_project/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource homeRemoteDatasource;

  HomeRepositoryImpl({required this.homeRemoteDatasource});

  @override
  Future<HomeEntity> getAllCategories() async {
    return await homeRemoteDatasource.getAllCategories();
  }
}
