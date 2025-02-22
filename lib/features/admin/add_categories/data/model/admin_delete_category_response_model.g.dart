// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_delete_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDeleteCategoryResponseModel _$AdminDeleteCategoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    AdminDeleteCategoryResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      deleteCategory: json['deleteCategory'] as bool?,
    );
