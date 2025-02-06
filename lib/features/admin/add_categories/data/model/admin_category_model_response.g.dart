// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_category_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminCategoryModelResponse _$AdminCategoryModelResponseFromJson(
        Map<String, dynamic> json) =>
    AdminCategoryModelResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );
