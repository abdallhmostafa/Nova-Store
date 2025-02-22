
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_update_category_response_model.g.dart';

@JsonSerializable(createToJson: false)
class AdminUpdateCategoryResponseModel {
  AdminUpdateCategoryResponseModel({
    required this.data,
  });
// AdminUpdateCategoryResponseModel

  factory AdminUpdateCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateCategoryResponseModelFromJson(json);
  final Data? data;
}

@JsonSerializable(createToJson: false)
class Data {
  Data({
    required this.updateCategory,
  });


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  final UpdateCategory? updateCategory;
}

@JsonSerializable(createToJson: false)
class UpdateCategory {
  UpdateCategory({
    required this.id,
  });


  factory UpdateCategory.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryFromJson(json);
  final String? id;
}
