// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spell_search_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpellSearchState {
  AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> get field =>
      throw _privateConstructorUsedError;
  int get spellLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpellSearchStateCopyWith<SpellSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellSearchStateCopyWith<$Res> {
  factory $SpellSearchStateCopyWith(
          SpellSearchState value, $Res Function(SpellSearchState) then) =
      _$SpellSearchStateCopyWithImpl<$Res>;
  $Res call(
      {AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field,
      int spellLevel});
}

/// @nodoc
class _$SpellSearchStateCopyWithImpl<$Res>
    implements $SpellSearchStateCopyWith<$Res> {
  _$SpellSearchStateCopyWithImpl(this._value, this._then);

  final SpellSearchState _value;
  // ignore: unused_field
  final $Res Function(SpellSearchState) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? spellLevel = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>,
      spellLevel: spellLevel == freezed
          ? _value.spellLevel
          : spellLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SpellSearchStateCopyWith<$Res>
    implements $SpellSearchStateCopyWith<$Res> {
  factory _$$_SpellSearchStateCopyWith(
          _$_SpellSearchState value, $Res Function(_$_SpellSearchState) then) =
      __$$_SpellSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field,
      int spellLevel});
}

/// @nodoc
class __$$_SpellSearchStateCopyWithImpl<$Res>
    extends _$SpellSearchStateCopyWithImpl<$Res>
    implements _$$_SpellSearchStateCopyWith<$Res> {
  __$$_SpellSearchStateCopyWithImpl(
      _$_SpellSearchState _value, $Res Function(_$_SpellSearchState) _then)
      : super(_value, (v) => _then(v as _$_SpellSearchState));

  @override
  _$_SpellSearchState get _value => super._value as _$_SpellSearchState;

  @override
  $Res call({
    Object? field = freezed,
    Object? spellLevel = freezed,
  }) {
    return _then(_$_SpellSearchState(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>,
      spellLevel: spellLevel == freezed
          ? _value.spellLevel
          : spellLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SpellSearchState implements _SpellSearchState {
  const _$_SpellSearchState(
      {this.field =
          const AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>>.nothing(),
      required this.spellLevel});

  @override
  @JsonKey()
  final AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field;
  @override
  final int spellLevel;

  @override
  String toString() {
    return 'SpellSearchState(field: $field, spellLevel: $spellLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpellSearchState &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality()
                .equals(other.spellLevel, spellLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(spellLevel));

  @JsonKey(ignore: true)
  @override
  _$$_SpellSearchStateCopyWith<_$_SpellSearchState> get copyWith =>
      __$$_SpellSearchStateCopyWithImpl<_$_SpellSearchState>(this, _$identity);
}

abstract class _SpellSearchState implements SpellSearchState {
  const factory _SpellSearchState(
      {final AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> field,
      required final int spellLevel}) = _$_SpellSearchState;

  @override
  AsyncField<List<ReferenceBaseEntity<DndBaseEntity>>> get field =>
      throw _privateConstructorUsedError;
  @override
  int get spellLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpellSearchStateCopyWith<_$_SpellSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
