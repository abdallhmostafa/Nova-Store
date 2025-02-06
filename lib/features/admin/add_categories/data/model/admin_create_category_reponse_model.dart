import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_create_category_reponse_model.g.dart';

@JsonSerializable(createToJson: false)
class AdminCreateCategoryResponseModel {
  AdminCreateCategoryResponseModel({
    required this.data,
  });

  factory AdminCreateCategoryResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$AdminCreateCategoryResponseModelFromJson(json);
  final Data? data;
}

@JsonSerializable(createToJson: false)
class Data {
  Data({
    required this.addCategory,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  final AddCategory? addCategory;
}

@JsonSerializable(createToJson: false)
class AddCategory {
  AddCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  factory AddCategory.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryFromJson(json);
  final String? id;
  final String? name;
  final String? image;
}
