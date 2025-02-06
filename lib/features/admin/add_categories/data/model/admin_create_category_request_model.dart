import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_create_category_request_model.g.dart';

@JsonSerializable(createFactory: false)
class AdminCreateCategoryRequestModel {
  AdminCreateCategoryRequestModel({
    required this.name,
    required this.image,
  });
  Map<String, dynamic> toJson() =>
      _$AdminCreateCategoryRequestModelToJson(this);
  final String name;
  final String image;
}
