import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_update_category_request_model.g.dart';

@JsonSerializable(createFactory: false)
class AdminUpdateCategoryRequestModel {
  AdminUpdateCategoryRequestModel({
    required this.id,
    required this.name,
    required this.image,
  });
  final String id;
  final String name;
  final String image;

  Map<String, dynamic> toJson() =>
      _$AdminUpdateCategoryRequestModelToJson(this);
}
