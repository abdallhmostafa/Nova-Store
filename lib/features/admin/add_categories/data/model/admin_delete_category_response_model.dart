
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_delete_category_response_model.g.dart';

@JsonSerializable(createToJson: false)
class AdminDeleteCategoryResponseModel {
  AdminDeleteCategoryResponseModel({
    required this.data,
  });


  factory AdminDeleteCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteCategoryResponseModelFromJson(json);
  final Data? data;
}

@JsonSerializable(createToJson: false)
class Data {
  Data({
    required this.deleteCategory,
  });


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  final bool? deleteCategory;
}
