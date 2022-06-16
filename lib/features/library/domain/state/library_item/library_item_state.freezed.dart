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
mixin _$LibraryItemState {
  AsyncField<ReferenceBaseEntity> get field =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryItemStateCopyWith<LibraryItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemStateCopyWith<$Res> {
  factory $LibraryItemStateCopyWith(
          LibraryItemState value, $Res Function(LibraryItemState) then) =
      _$LibraryItemStateCopyWithImpl<$Res>;
  $Res call({AsyncField<ReferenceBaseEntity> field});
}

/// @nodoc
class _$LibraryItemStateCopyWithImpl<$Res>
    implements $LibraryItemStateCopyWith<$Res> {
  _$LibraryItemStateCopyWithImpl(this._value, this._then);

  final LibraryItemState _value;
  // ignore: unused_field
  final $Res Function(LibraryItemState) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<ReferenceBaseEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_LibraryItemStateCopyWith<$Res>
    implements $LibraryItemStateCopyWith<$Res> {
  factory _$$_LibraryItemStateCopyWith(
          _$_LibraryItemState value, $Res Function(_$_LibraryItemState) then) =
      __$$_LibraryItemStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncField<ReferenceBaseEntity> field});
}

/// @nodoc
class __$$_LibraryItemStateCopyWithImpl<$Res>
    extends _$LibraryItemStateCopyWithImpl<$Res>
    implements _$$_LibraryItemStateCopyWith<$Res> {
  __$$_LibraryItemStateCopyWithImpl(
      _$_LibraryItemState _value, $Res Function(_$_LibraryItemState) _then)
      : super(_value, (v) => _then(v as _$_LibraryItemState));

  @override
  _$_LibraryItemState get _value => super._value as _$_LibraryItemState;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_LibraryItemState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<ReferenceBaseEntity>,
    ));
  }
}

/// @nodoc

class _$_LibraryItemState implements _LibraryItemState {
  const _$_LibraryItemState({this.field = const AsyncField.nothing()});

  @override
  @JsonKey()
  final AsyncField<ReferenceBaseEntity> field;

  @override
  String toString() {
    return 'LibraryItemState(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryItemState &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryItemStateCopyWith<_$_LibraryItemState> get copyWith =>
      __$$_LibraryItemStateCopyWithImpl<_$_LibraryItemState>(this, _$identity);
}

abstract class _LibraryItemState implements LibraryItemState {
  const factory _LibraryItemState(
      {final AsyncField<ReferenceBaseEntity> field}) = _$_LibraryItemState;

  @override
  AsyncField<ReferenceBaseEntity> get field =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryItemStateCopyWith<_$_LibraryItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
