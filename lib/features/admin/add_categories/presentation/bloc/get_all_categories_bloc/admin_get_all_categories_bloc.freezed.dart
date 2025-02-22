// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_get_all_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminGetAllCategoriesEvent {
  bool get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) getAllCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? getAllCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? getAllCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategories value) getAllCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategories value)? getAllCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategories value)? getAllCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AdminGetAllCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminGetAllCategoriesEventCopyWith<AdminGetAllCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminGetAllCategoriesEventCopyWith<$Res> {
  factory $AdminGetAllCategoriesEventCopyWith(AdminGetAllCategoriesEvent value,
          $Res Function(AdminGetAllCategoriesEvent) then) =
      _$AdminGetAllCategoriesEventCopyWithImpl<$Res,
          AdminGetAllCategoriesEvent>;
  @useResult
  $Res call({bool refresh});
}

/// @nodoc
class _$AdminGetAllCategoriesEventCopyWithImpl<$Res,
        $Val extends AdminGetAllCategoriesEvent>
    implements $AdminGetAllCategoriesEventCopyWith<$Res> {
  _$AdminGetAllCategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminGetAllCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCategoriesImplCopyWith<$Res>
    implements $AdminGetAllCategoriesEventCopyWith<$Res> {
  factory _$$GetAllCategoriesImplCopyWith(_$GetAllCategoriesImpl value,
          $Res Function(_$GetAllCategoriesImpl) then) =
      __$$GetAllCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool refresh});
}

/// @nodoc
class __$$GetAllCategoriesImplCopyWithImpl<$Res>
    extends _$AdminGetAllCategoriesEventCopyWithImpl<$Res,
        _$GetAllCategoriesImpl>
    implements _$$GetAllCategoriesImplCopyWith<$Res> {
  __$$GetAllCategoriesImplCopyWithImpl(_$GetAllCategoriesImpl _value,
      $Res Function(_$GetAllCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminGetAllCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_$GetAllCategoriesImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetAllCategoriesImpl implements GetAllCategories {
  const _$GetAllCategoriesImpl({required this.refresh});

  @override
  final bool refresh;

  @override
  String toString() {
    return 'AdminGetAllCategoriesEvent.getAllCategories(refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCategoriesImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  /// Create a copy of AdminGetAllCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCategoriesImplCopyWith<_$GetAllCategoriesImpl> get copyWith =>
      __$$GetAllCategoriesImplCopyWithImpl<_$GetAllCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) getAllCategories,
  }) {
    return getAllCategories(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? getAllCategories,
  }) {
    return getAllCategories?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? getAllCategories,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategories value) getAllCategories,
  }) {
    return getAllCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategories value)? getAllCategories,
  }) {
    return getAllCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategories value)? getAllCategories,
    required TResult orElse(),
  }) {
    if (getAllCategories != null) {
      return getAllCategories(this);
    }
    return orElse();
  }
}

abstract class GetAllCategories implements AdminGetAllCategoriesEvent {
  const factory GetAllCategories({required final bool refresh}) =
      _$GetAllCategoriesImpl;

  @override
  bool get refresh;

  /// Create a copy of AdminGetAllCategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCategoriesImplCopyWith<_$GetAllCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminGetAllCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            AdminCategoryModelResponse adminCategoryModelResponse)
        success,
    required TResult Function() empty,
    required TResult Function(GraphqlErrorModel graphqlErrorModel) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult? Function()? empty,
    TResult? Function(GraphqlErrorModel graphqlErrorModel)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult Function()? empty,
    TResult Function(GraphqlErrorModel graphqlErrorModel)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminGetAllCategoriesStateCopyWith<$Res> {
  factory $AdminGetAllCategoriesStateCopyWith(AdminGetAllCategoriesState value,
          $Res Function(AdminGetAllCategoriesState) then) =
      _$AdminGetAllCategoriesStateCopyWithImpl<$Res,
          AdminGetAllCategoriesState>;
}

/// @nodoc
class _$AdminGetAllCategoriesStateCopyWithImpl<$Res,
        $Val extends AdminGetAllCategoriesState>
    implements $AdminGetAllCategoriesStateCopyWith<$Res> {
  _$AdminGetAllCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AdminGetAllCategoriesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AdminGetAllCategoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            AdminCategoryModelResponse adminCategoryModelResponse)
        success,
    required TResult Function() empty,
    required TResult Function(GraphqlErrorModel graphqlErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult? Function()? empty,
    TResult? Function(GraphqlErrorModel graphqlErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult Function()? empty,
    TResult Function(GraphqlErrorModel graphqlErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AdminGetAllCategoriesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AdminCategoryModelResponse adminCategoryModelResponse});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AdminGetAllCategoriesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminCategoryModelResponse = null,
  }) {
    return _then(_$SuccessImpl(
      null == adminCategoryModelResponse
          ? _value.adminCategoryModelResponse
          : adminCategoryModelResponse // ignore: cast_nullable_to_non_nullable
              as AdminCategoryModelResponse,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.adminCategoryModelResponse);

  @override
  final AdminCategoryModelResponse adminCategoryModelResponse;

  @override
  String toString() {
    return 'AdminGetAllCategoriesState.success(adminCategoryModelResponse: $adminCategoryModelResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.adminCategoryModelResponse,
                    adminCategoryModelResponse) ||
                other.adminCategoryModelResponse ==
                    adminCategoryModelResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminCategoryModelResponse);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            AdminCategoryModelResponse adminCategoryModelResponse)
        success,
    required TResult Function() empty,
    required TResult Function(GraphqlErrorModel graphqlErrorModel) failure,
  }) {
    return success(adminCategoryModelResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult? Function()? empty,
    TResult? Function(GraphqlErrorModel graphqlErrorModel)? failure,
  }) {
    return success?.call(adminCategoryModelResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult Function()? empty,
    TResult Function(GraphqlErrorModel graphqlErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(adminCategoryModelResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AdminGetAllCategoriesState {
  const factory Success(
          final AdminCategoryModelResponse adminCategoryModelResponse) =
      _$SuccessImpl;

  AdminCategoryModelResponse get adminCategoryModelResponse;

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$AdminGetAllCategoriesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'AdminGetAllCategoriesState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            AdminCategoryModelResponse adminCategoryModelResponse)
        success,
    required TResult Function() empty,
    required TResult Function(GraphqlErrorModel graphqlErrorModel) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult? Function()? empty,
    TResult? Function(GraphqlErrorModel graphqlErrorModel)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult Function()? empty,
    TResult Function(GraphqlErrorModel graphqlErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements AdminGetAllCategoriesState {
  const factory Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GraphqlErrorModel graphqlErrorModel});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AdminGetAllCategoriesStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphqlErrorModel = null,
  }) {
    return _then(_$FailureImpl(
      null == graphqlErrorModel
          ? _value.graphqlErrorModel
          : graphqlErrorModel // ignore: cast_nullable_to_non_nullable
              as GraphqlErrorModel,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.graphqlErrorModel);

  @override
  final GraphqlErrorModel graphqlErrorModel;

  @override
  String toString() {
    return 'AdminGetAllCategoriesState.failure(graphqlErrorModel: $graphqlErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.graphqlErrorModel, graphqlErrorModel) ||
                other.graphqlErrorModel == graphqlErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graphqlErrorModel);

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            AdminCategoryModelResponse adminCategoryModelResponse)
        success,
    required TResult Function() empty,
    required TResult Function(GraphqlErrorModel graphqlErrorModel) failure,
  }) {
    return failure(graphqlErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult? Function()? empty,
    TResult? Function(GraphqlErrorModel graphqlErrorModel)? failure,
  }) {
    return failure?.call(graphqlErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdminCategoryModelResponse adminCategoryModelResponse)?
        success,
    TResult Function()? empty,
    TResult Function(GraphqlErrorModel graphqlErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(graphqlErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Empty value) empty,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Empty value)? empty,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Empty value)? empty,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements AdminGetAllCategoriesState {
  const factory Failure(final GraphqlErrorModel graphqlErrorModel) =
      _$FailureImpl;

  GraphqlErrorModel get graphqlErrorModel;

  /// Create a copy of AdminGetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
