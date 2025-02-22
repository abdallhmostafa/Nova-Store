// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_update_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminUpdateCategoryResponseModel _$AdminUpdateCategoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    AdminUpdateCategoryResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      updateCategory: json['updateCategory'] == null
          ? null
          : UpdateCategory.fromJson(
              json['updateCategory'] as Map<String, dynamic>),
    );

UpdateCategory _$UpdateCategoryFromJson(Map<String, dynamic> json) =>
    UpdateCategory(
      id: json['id'] as String?,
    );
