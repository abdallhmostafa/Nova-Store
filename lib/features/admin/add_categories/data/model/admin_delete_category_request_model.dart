import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_delete_category_request_model.g.dart';
@JsonSerializable(createFactory: false)
class AdminDeleteCategoryRequestModel {
  AdminDeleteCategoryRequestModel({required this.id});

  final String id;

  Map<String, dynamic> toJson() =>
      _$AdminDeleteCategoryRequestModelToJson(this);
}
