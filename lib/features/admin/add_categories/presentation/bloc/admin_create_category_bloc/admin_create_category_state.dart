part of 'admin_create_category_bloc.dart';

@freezed
class AdminCreateCategoryState with _$AdminCreateCategoryState {
  const factory AdminCreateCategoryState.initial() = _Initial;
  const factory AdminCreateCategoryState.loading() = Loading;
  const factory AdminCreateCategoryState.success({
    required AdminCreateCategoryResponseModel response,
  }) = Success;
  const factory AdminCreateCategoryState.error({
    required GraphqlErrorModel error,
  }) = Error;
}
