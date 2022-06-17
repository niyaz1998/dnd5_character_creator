// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryItemState<T extends DndBaseEntity> {
  AsyncField<T> get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryItemStateCopyWith<T, LibraryItemState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemStateCopyWith<T extends DndBaseEntity, $Res> {
  factory $LibraryItemStateCopyWith(
          LibraryItemState<T> value, $Res Function(LibraryItemState<T>) then) =
      _$LibraryItemStateCopyWithImpl<T, $Res>;
  $Res call({AsyncField<T> field});
}

/// @nodoc
class _$LibraryItemStateCopyWithImpl<T extends DndBaseEntity, $Res>
    implements $LibraryItemStateCopyWith<T, $Res> {
  _$LibraryItemStateCopyWithImpl(this._value, this._then);

  final LibraryItemState<T> _value;
  // ignore: unused_field
  final $Res Function(LibraryItemState<T>) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<T>,
    ));
  }
}

/// @nodoc
abstract class _$$_LibraryItemStateCopyWith<T extends DndBaseEntity, $Res>
    implements $LibraryItemStateCopyWith<T, $Res> {
  factory _$$_LibraryItemStateCopyWith(_$_LibraryItemState<T> value,
          $Res Function(_$_LibraryItemState<T>) then) =
      __$$_LibraryItemStateCopyWithImpl<T, $Res>;
  @override
  $Res call({AsyncField<T> field});
}

/// @nodoc
class __$$_LibraryItemStateCopyWithImpl<T extends DndBaseEntity, $Res>
    extends _$LibraryItemStateCopyWithImpl<T, $Res>
    implements _$$_LibraryItemStateCopyWith<T, $Res> {
  __$$_LibraryItemStateCopyWithImpl(_$_LibraryItemState<T> _value,
      $Res Function(_$_LibraryItemState<T>) _then)
      : super(_value, (v) => _then(v as _$_LibraryItemState<T>));

  @override
  _$_LibraryItemState<T> get _value => super._value as _$_LibraryItemState<T>;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_LibraryItemState<T>(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<T>,
    ));
  }
}

/// @nodoc

class _$_LibraryItemState<T extends DndBaseEntity>
    implements _LibraryItemState<T> {
  const _$_LibraryItemState({this.field = const AsyncField.nothing()});

  @override
  @JsonKey()
  final AsyncField<T> field;

  @override
  String toString() {
    return 'LibraryItemState<$T>(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryItemState<T> &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryItemStateCopyWith<T, _$_LibraryItemState<T>> get copyWith =>
      __$$_LibraryItemStateCopyWithImpl<T, _$_LibraryItemState<T>>(
          this, _$identity);
}

abstract class _LibraryItemState<T extends DndBaseEntity>
    implements LibraryItemState<T> {
  const factory _LibraryItemState({final AsyncField<T> field}) =
      _$_LibraryItemState<T>;

  @override
  AsyncField<T> get field => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryItemStateCopyWith<T, _$_LibraryItemState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
