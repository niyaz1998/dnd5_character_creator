// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryCategoryState {
  AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> get field =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryCategoryStateCopyWith<LibraryCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryCategoryStateCopyWith<$Res> {
  factory $LibraryCategoryStateCopyWith(LibraryCategoryState value,
          $Res Function(LibraryCategoryState) then) =
      _$LibraryCategoryStateCopyWithImpl<$Res>;
  $Res call({AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field});
}

/// @nodoc
class _$LibraryCategoryStateCopyWithImpl<$Res>
    implements $LibraryCategoryStateCopyWith<$Res> {
  _$LibraryCategoryStateCopyWithImpl(this._value, this._then);

  final LibraryCategoryState _value;
  // ignore: unused_field
  final $Res Function(LibraryCategoryState) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_LibraryCategoryStateCopyWith<$Res>
    implements $LibraryCategoryStateCopyWith<$Res> {
  factory _$$_LibraryCategoryStateCopyWith(_$_LibraryCategoryState value,
          $Res Function(_$_LibraryCategoryState) then) =
      __$$_LibraryCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field});
}

/// @nodoc
class __$$_LibraryCategoryStateCopyWithImpl<$Res>
    extends _$LibraryCategoryStateCopyWithImpl<$Res>
    implements _$$_LibraryCategoryStateCopyWith<$Res> {
  __$$_LibraryCategoryStateCopyWithImpl(_$_LibraryCategoryState _value,
      $Res Function(_$_LibraryCategoryState) _then)
      : super(_value, (v) => _then(v as _$_LibraryCategoryState));

  @override
  _$_LibraryCategoryState get _value => super._value as _$_LibraryCategoryState;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_$_LibraryCategoryState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>,
    ));
  }
}

/// @nodoc

class _$_LibraryCategoryState implements _LibraryCategoryState {
  const _$_LibraryCategoryState(
      {this.field = const AsyncField<List<ReferenceBaseEntity>>.nothing()});

  @override
  @JsonKey()
  final AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field;

  @override
  String toString() {
    return 'LibraryCategoryState(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryCategoryState &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryCategoryStateCopyWith<_$_LibraryCategoryState> get copyWith =>
      __$$_LibraryCategoryStateCopyWithImpl<_$_LibraryCategoryState>(
          this, _$identity);
}

abstract class _LibraryCategoryState implements LibraryCategoryState {
  const factory _LibraryCategoryState(
          {final AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field}) =
      _$_LibraryCategoryState;

  @override
  AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> get field =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryCategoryStateCopyWith<_$_LibraryCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
