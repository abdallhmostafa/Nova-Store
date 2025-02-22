part of 'admin_delete_category_cubit.dart';

@freezed
class AdminDeleteCategoryState with _$AdminDeleteCategoryState {
  const factory AdminDeleteCategoryState.initial() = _Initial;
  const factory AdminDeleteCategoryState.loading() = _Loading;
  const factory AdminDeleteCategoryState.success({
    required AdminDeleteCategoryResponseModel response,
  }) = _Success;
  const factory AdminDeleteCategoryState.failure({
    required GraphqlErrorModel error,
  }) = _Failure;
}
