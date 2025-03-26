// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_assign_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassAssignInfoModel _$ClassAssignInfoModelFromJson(Map<String, dynamic> json) {
  return _ClassAssignInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ClassAssignInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get totalStudent => throw _privateConstructorUsedError;
  bool? get assigned => throw _privateConstructorUsedError;

  /// Serializes this ClassAssignInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassAssignInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassAssignInfoModelCopyWith<ClassAssignInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassAssignInfoModelCopyWith<$Res> {
  factory $ClassAssignInfoModelCopyWith(ClassAssignInfoModel value,
          $Res Function(ClassAssignInfoModel) then) =
      _$ClassAssignInfoModelCopyWithImpl<$Res, ClassAssignInfoModel>;
  @useResult
  $Res call({int? id, String? name, int? totalStudent, bool? assigned});
}

/// @nodoc
class _$ClassAssignInfoModelCopyWithImpl<$Res,
        $Val extends ClassAssignInfoModel>
    implements $ClassAssignInfoModelCopyWith<$Res> {
  _$ClassAssignInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassAssignInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? assigned = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassAssignInfoModelImplCopyWith<$Res>
    implements $ClassAssignInfoModelCopyWith<$Res> {
  factory _$$ClassAssignInfoModelImplCopyWith(_$ClassAssignInfoModelImpl value,
          $Res Function(_$ClassAssignInfoModelImpl) then) =
      __$$ClassAssignInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? totalStudent, bool? assigned});
}

/// @nodoc
class __$$ClassAssignInfoModelImplCopyWithImpl<$Res>
    extends _$ClassAssignInfoModelCopyWithImpl<$Res, _$ClassAssignInfoModelImpl>
    implements _$$ClassAssignInfoModelImplCopyWith<$Res> {
  __$$ClassAssignInfoModelImplCopyWithImpl(_$ClassAssignInfoModelImpl _value,
      $Res Function(_$ClassAssignInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassAssignInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? assigned = freezed,
  }) {
    return _then(_$ClassAssignInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassAssignInfoModelImpl extends _ClassAssignInfoModel {
  const _$ClassAssignInfoModelImpl(
      {this.id, this.name, this.totalStudent, this.assigned})
      : super._();

  factory _$ClassAssignInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassAssignInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? totalStudent;
  @override
  final bool? assigned;

  @override
  String toString() {
    return 'ClassAssignInfoModel(id: $id, name: $name, totalStudent: $totalStudent, assigned: $assigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassAssignInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalStudent, totalStudent) ||
                other.totalStudent == totalStudent) &&
            (identical(other.assigned, assigned) ||
                other.assigned == assigned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, totalStudent, assigned);

  /// Create a copy of ClassAssignInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassAssignInfoModelImplCopyWith<_$ClassAssignInfoModelImpl>
      get copyWith =>
          __$$ClassAssignInfoModelImplCopyWithImpl<_$ClassAssignInfoModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassAssignInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ClassAssignInfoModel extends ClassAssignInfoModel {
  const factory _ClassAssignInfoModel(
      {final int? id,
      final String? name,
      final int? totalStudent,
      final bool? assigned}) = _$ClassAssignInfoModelImpl;
  const _ClassAssignInfoModel._() : super._();

  factory _ClassAssignInfoModel.fromJson(Map<String, dynamic> json) =
      _$ClassAssignInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get totalStudent;
  @override
  bool? get assigned;

  /// Create a copy of ClassAssignInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassAssignInfoModelImplCopyWith<_$ClassAssignInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
