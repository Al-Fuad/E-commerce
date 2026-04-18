import 'package:test_project/features/home/domain/entities/home_entity.dart';

class HomeModel extends HomeEntity {
  HomeModel({required super.categories});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      categories: List<String>.from(json['categories']),
    );
  }
}