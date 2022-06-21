// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_categories_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryCategoriesState {
  AsyncField<List<LibraryCategoryEntity>> get field =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryCategoriesStateCopyWith<LibraryCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryCategoriesStateCopyWith<$Res> {
  factory $LibraryCategoriesStateCopyWith(LibraryCategoriesState value,
          $Res Function(LibraryCategoriesState) then) =
      _$LibraryCategoriesStateCopyWithImpl<$Res>;
  $Res call({AsyncField<List<LibraryCategoryEntity>> field});
}

/// @nodoc
class _$LibraryCategoriesStateCopyWithImpl<$Res>
    implements $LibraryCategoriesStateCopyWith<$Res> {
  _$LibraryCategoriesStateCopyWithImpl(this._value, this._then);

  final LibraryCategoriesState _value;
  // ignore: unused_field
  final $Res Function(LibraryCategoriesState) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<LibraryCategoryEntity>>,
    ));
  }
}

/// @nodoc
abstract class _$$_LibraryCategoriesStateCopyWith<$Res>
    implements $LibraryCategoriesStateCopyWith<$Res> {
  factory _$$_LibraryCategoriesStateCopyWith(_$_LibraryCategoriesState value,
          $Res Function(_$_LibraryCategoriesState) then) =
      __$$_LibraryCategoriesStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncField<List<LibraryCategoryEntity>> field});
}

/// @nodoc
class __$$_LibraryCategoriesStateCopyWithImpl<$Res>
    extends _$LibraryCategoriesStateCopyWithImpl<$Res>
    implements _$$_LibraryCategoriesStateCopyWith<$Res> {
  __$$_LibraryCategoriesStateCopyWithImpl(_$_LibraryCategoriesState _value,
      $Res Function(_$_LibraryCategoriesState) _then)
      : super(_value, (v) => _then(v as _$_LibraryCategoriesState));

  @override
  _$_LibraryCategoriesState get _value =>
      super._value as _$_LibraryCategoriesState;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_LibraryCategoriesState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<LibraryCategoryEntity>>,
    ));
  }
}

/// @nodoc

class _$_LibraryCategoriesState implements _LibraryCategoriesState {
  const _$_LibraryCategoriesState(
      {this.field = const AsyncField<List<LibraryCategoryEntity>>.nothing()});

  @override
  @JsonKey()
  final AsyncField<List<LibraryCategoryEntity>> field;

  @override
  String toString() {
    return 'LibraryCategoriesState(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryCategoriesState &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryCategoriesStateCopyWith<_$_LibraryCategoriesState> get copyWith =>
      __$$_LibraryCategoriesStateCopyWithImpl<_$_LibraryCategoriesState>(
          this, _$identity);
}

abstract class _LibraryCategoriesState implements LibraryCategoriesState {
  const factory _LibraryCategoriesState(
          {final AsyncField<List<LibraryCategoryEntity>> field}) =
      _$_LibraryCategoriesState;

  @override
  AsyncField<List<LibraryCategoryEntity>> get field =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryCategoriesStateCopyWith<_$_LibraryCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
