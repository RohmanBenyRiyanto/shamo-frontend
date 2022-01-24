import 'dart:convert';

import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/galery_model.dart';

class ProductModel {
  late int id;
  late String name;
  late double price;
  late String description;
  late String tags;
  late CategoryModel category;
  late DateTime updatedAt;
  late DateTime createdAt;
  late List<GalleryModel> galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.updatedAt,
    required this.createdAt,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromJson(json['category']);
    updatedAt = DateTime.parse(json['updated_at']);
    createdAt = DateTime.parse(json['created_at']);
    galleries = json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'updatedAt': updatedAt.toString(),
      'createdAt': createdAt.toString(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
    };
  }
}
