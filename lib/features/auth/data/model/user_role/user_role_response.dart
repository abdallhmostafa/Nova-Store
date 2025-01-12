import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable(createToJson: false)
class UserRoleResponse {
  UserRoleResponse({required this.userRole, required this.userId});

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);
  @JsonKey(name: 'role')
  final String? userRole;

  @JsonKey(name: 'id')
  final int? userId;
}
