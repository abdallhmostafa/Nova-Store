// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangedMode,
    required TResult Function(Locale language) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangedMode,
    TResult? Function(Locale language)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangedMode,
    TResult Function(Locale language)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangedMode value) themeChangedMode,
    required TResult Function(ChangeLanguageState value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangedMode value)? themeChangedMode,
    TResult? Function(ChangeLanguageState value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangedMode value)? themeChangedMode,
    TResult Function(ChangeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangedMode,
    required TResult Function(Locale language) changeLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangedMode,
    TResult? Function(Locale language)? changeLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangedMode,
    TResult Function(Locale language)? changeLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangedMode value) themeChangedMode,
    required TResult Function(ChangeLanguageState value) changeLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangedMode value)? themeChangedMode,
    TResult? Function(ChangeLanguageState value)? changeLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangedMode value)? themeChangedMode,
    TResult Function(ChangeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeChangedModeImplCopyWith<$Res> {
  factory _$$ThemeChangedModeImplCopyWith(_$ThemeChangedModeImpl value,
          $Res Function(_$ThemeChangedModeImpl) then) =
      __$$ThemeChangedModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeChangedModeImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeChangedModeImpl>
    implements _$$ThemeChangedModeImplCopyWith<$Res> {
  __$$ThemeChangedModeImplCopyWithImpl(_$ThemeChangedModeImpl _value,
      $Res Function(_$ThemeChangedModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeChangedModeImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeChangedModeImpl implements ThemeChangedMode {
  const _$ThemeChangedModeImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState.themeChangedMode(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedModeImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedModeImplCopyWith<_$ThemeChangedModeImpl> get copyWith =>
      __$$ThemeChangedModeImplCopyWithImpl<_$ThemeChangedModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangedMode,
    required TResult Function(Locale language) changeLanguage,
  }) {
    return themeChangedMode(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangedMode,
    TResult? Function(Locale language)? changeLanguage,
  }) {
    return themeChangedMode?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangedMode,
    TResult Function(Locale language)? changeLanguage,
    required TResult orElse(),
  }) {
    if (themeChangedMode != null) {
      return themeChangedMode(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangedMode value) themeChangedMode,
    required TResult Function(ChangeLanguageState value) changeLanguage,
  }) {
    return themeChangedMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangedMode value)? themeChangedMode,
    TResult? Function(ChangeLanguageState value)? changeLanguage,
  }) {
    return themeChangedMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangedMode value)? themeChangedMode,
    TResult Function(ChangeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (themeChangedMode != null) {
      return themeChangedMode(this);
    }
    return orElse();
  }
}

abstract class ThemeChangedMode implements AppState {
  const factory ThemeChangedMode({required final bool isDark}) =
      _$ThemeChangedModeImpl;

  bool get isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeChangedModeImplCopyWith<_$ThemeChangedModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeLanguageStateImplCopyWith<$Res> {
  factory _$$ChangeLanguageStateImplCopyWith(_$ChangeLanguageStateImpl value,
          $Res Function(_$ChangeLanguageStateImpl) then) =
      __$$ChangeLanguageStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale language});
}

/// @nodoc
class __$$ChangeLanguageStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ChangeLanguageStateImpl>
    implements _$$ChangeLanguageStateImplCopyWith<$Res> {
  __$$ChangeLanguageStateImplCopyWithImpl(_$ChangeLanguageStateImpl _value,
      $Res Function(_$ChangeLanguageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$ChangeLanguageStateImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageStateImpl implements ChangeLanguageState {
  const _$ChangeLanguageStateImpl({required this.language});

  @override
  final Locale language;

  @override
  String toString() {
    return 'AppState.changeLanguage(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageStateImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageStateImplCopyWith<_$ChangeLanguageStateImpl> get copyWith =>
      __$$ChangeLanguageStateImplCopyWithImpl<_$ChangeLanguageStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangedMode,
    required TResult Function(Locale language) changeLanguage,
  }) {
    return changeLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangedMode,
    TResult? Function(Locale language)? changeLanguage,
  }) {
    return changeLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangedMode,
    TResult Function(Locale language)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangedMode value) themeChangedMode,
    required TResult Function(ChangeLanguageState value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangedMode value)? themeChangedMode,
    TResult? Function(ChangeLanguageState value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangedMode value)? themeChangedMode,
    TResult Function(ChangeLanguageState value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguageState implements AppState {
  const factory ChangeLanguageState({required final Locale language}) =
      _$ChangeLanguageStateImpl;

  Locale get language;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLanguageStateImplCopyWith<_$ChangeLanguageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
