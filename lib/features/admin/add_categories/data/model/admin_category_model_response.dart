
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_category_model_response.g.dart';

@JsonSerializable(createToJson: false)
class AdminCategoryModelResponse {
    AdminCategoryModelResponse({
        required this.data,
    });


    factory AdminCategoryModelResponse.fromJson(Map<String, dynamic> json) => _$AdminCategoryModelResponseFromJson(json);
    final Data? data;

}

@JsonSerializable(createToJson: false)
class Data {
    Data({
        required this.categories,
    });


    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
    final List<Category>? categories;

}

@JsonSerializable(createToJson: false)
class Category {
    Category({
        required this.id,
        required this.name,
        required this.image,
    });

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
    final String? id;
    final String? name;
    final String? image;


}
