import 'package:test_project/core/enums/item_enum.dart';

class ItemsModel {
  final String title;
  final String image;
  final String? description;
  final double price;
  final ItemEnum status;
  final int quantity;

  ItemsModel({
    required this.title,
    required this.image,
    this.description,
    required this.price,
    required this.status,
    required this.quantity,
  });
}
