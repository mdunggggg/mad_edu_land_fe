// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherProfileModel _$TeacherProfileModelFromJson(Map<String, dynamic> json) {
  return _TeacherProfileModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  /// Serializes this TeacherProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherProfileModelCopyWith<TeacherProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherProfileModelCopyWith<$Res> {
  factory $TeacherProfileModelCopyWith(
          TeacherProfileModel value, $Res Function(TeacherProfileModel) then) =
      _$TeacherProfileModelCopyWithImpl<$Res, TeacherProfileModel>;
  @useResult
  $Res call({int? id, String? username, String? fullName});
}

/// @nodoc
class _$TeacherProfileModelCopyWithImpl<$Res, $Val extends TeacherProfileModel>
    implements $TeacherProfileModelCopyWith<$Res> {
  _$TeacherProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherProfileModelImplCopyWith<$Res>
    implements $TeacherProfileModelCopyWith<$Res> {
  factory _$$TeacherProfileModelImplCopyWith(_$TeacherProfileModelImpl value,
          $Res Function(_$TeacherProfileModelImpl) then) =
      __$$TeacherProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? username, String? fullName});
}

/// @nodoc
class __$$TeacherProfileModelImplCopyWithImpl<$Res>
    extends _$TeacherProfileModelCopyWithImpl<$Res, _$TeacherProfileModelImpl>
    implements _$$TeacherProfileModelImplCopyWith<$Res> {
  __$$TeacherProfileModelImplCopyWithImpl(_$TeacherProfileModelImpl _value,
      $Res Function(_$TeacherProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$TeacherProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherProfileModelImpl extends _TeacherProfileModel {
  const _$TeacherProfileModelImpl({this.id, this.username, this.fullName})
      : super._();

  factory _$TeacherProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherProfileModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'TeacherProfileModel(id: $id, username: $username, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, fullName);

  /// Create a copy of TeacherProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherProfileModelImplCopyWith<_$TeacherProfileModelImpl> get copyWith =>
      __$$TeacherProfileModelImplCopyWithImpl<_$TeacherProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherProfileModelImplToJson(
      this,
    );
  }
}

abstract class _TeacherProfileModel extends TeacherProfileModel {
  const factory _TeacherProfileModel(
      {final int? id,
      final String? username,
      final String? fullName}) = _$TeacherProfileModelImpl;
  const _TeacherProfileModel._() : super._();

  factory _TeacherProfileModel.fromJson(Map<String, dynamic> json) =
      _$TeacherProfileModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get fullName;

  /// Create a copy of TeacherProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherProfileModelImplCopyWith<_$TeacherProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
