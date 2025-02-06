// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_create_category_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminCreateCategoryResponseModel _$AdminCreateCategoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    AdminCreateCategoryResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      addCategory: json['addCategory'] == null
          ? null
          : AddCategory.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

AddCategory _$AddCategoryFromJson(Map<String, dynamic> json) => AddCategory(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );
