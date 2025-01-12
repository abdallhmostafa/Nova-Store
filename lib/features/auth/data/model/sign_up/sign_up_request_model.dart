import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request_model.g.dart';

@JsonSerializable(createFactory: false)
class SignUpRequestModel {
SignUpRequestModel({
required this.name,
required this.email,
required this.password,
required this.avatar,
});
final String  name;
final String  email;
final String  password;
final String  avatar;



   Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);


}