part of 'admin_update_category_cubit.dart';

@freezed
class AdminUpdateCategoryState with _$AdminUpdateCategoryState {
  const factory AdminUpdateCategoryState.initial() = _Initial;
  const factory AdminUpdateCategoryState.loading() = _Loading;
  const factory AdminUpdateCategoryState.success(
      AdminUpdateCategoryResponseModel response) = _Success;
  const factory AdminUpdateCategoryState.error(GraphqlErrorModel error) =
      _Error;
}
