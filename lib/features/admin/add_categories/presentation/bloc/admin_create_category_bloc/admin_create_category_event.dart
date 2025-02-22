part of 'admin_create_category_bloc.dart';

@freezed
class AdminCreateCategoryEvent with _$AdminCreateCategoryEvent {
  const factory AdminCreateCategoryEvent.createCategory({
    required BuildContext context,
    required String name,
  }) = CreateCategoryEvent;
}
