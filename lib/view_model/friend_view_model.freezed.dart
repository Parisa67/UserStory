// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendViewModel _$FriendViewModelFromJson(Map<String, dynamic> json) {
  return _FriendViewModel.fromJson(json);
}

/// @nodoc
class _$FriendViewModelTearOff {
  const _$FriendViewModelTearOff();

  _FriendViewModel call({int? id, String? guid, String? name}) {
    return _FriendViewModel(
      id: id,
      guid: guid,
      name: name,
    );
  }

  FriendViewModel fromJson(Map<String, Object?> json) {
    return FriendViewModel.fromJson(json);
  }
}

/// @nodoc
const $FriendViewModel = _$FriendViewModelTearOff();

/// @nodoc
mixin _$FriendViewModel {
  int? get id => throw _privateConstructorUsedError;
  String? get guid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendViewModelCopyWith<FriendViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendViewModelCopyWith<$Res> {
  factory $FriendViewModelCopyWith(
          FriendViewModel value, $Res Function(FriendViewModel) then) =
      _$FriendViewModelCopyWithImpl<$Res>;
  $Res call({int? id, String? guid, String? name});
}

/// @nodoc
class _$FriendViewModelCopyWithImpl<$Res>
    implements $FriendViewModelCopyWith<$Res> {
  _$FriendViewModelCopyWithImpl(this._value, this._then);

  final FriendViewModel _value;
  // ignore: unused_field
  final $Res Function(FriendViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FriendViewModelCopyWith<$Res>
    implements $FriendViewModelCopyWith<$Res> {
  factory _$FriendViewModelCopyWith(
          _FriendViewModel value, $Res Function(_FriendViewModel) then) =
      __$FriendViewModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? guid, String? name});
}

/// @nodoc
class __$FriendViewModelCopyWithImpl<$Res>
    extends _$FriendViewModelCopyWithImpl<$Res>
    implements _$FriendViewModelCopyWith<$Res> {
  __$FriendViewModelCopyWithImpl(
      _FriendViewModel _value, $Res Function(_FriendViewModel) _then)
      : super(_value, (v) => _then(v as _FriendViewModel));

  @override
  _FriendViewModel get _value => super._value as _FriendViewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? guid = freezed,
    Object? name = freezed,
  }) {
    return _then(_FriendViewModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendViewModel implements _FriendViewModel {
  _$_FriendViewModel({this.id, this.guid, this.name});

  factory _$_FriendViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_FriendViewModelFromJson(json);

  @override
  final int? id;
  @override
  final String? guid;
  @override
  final String? name;

  @override
  String toString() {
    return 'FriendViewModel(id: $id, guid: $guid, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendViewModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.guid, guid) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(guid),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$FriendViewModelCopyWith<_FriendViewModel> get copyWith =>
      __$FriendViewModelCopyWithImpl<_FriendViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendViewModelToJson(this);
  }
}

abstract class _FriendViewModel implements FriendViewModel {
  factory _FriendViewModel({int? id, String? guid, String? name}) =
      _$_FriendViewModel;

  factory _FriendViewModel.fromJson(Map<String, dynamic> json) =
      _$_FriendViewModel.fromJson;

  @override
  int? get id;
  @override
  String? get guid;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$FriendViewModelCopyWith<_FriendViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
