// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_class_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherClassInfoModel _$TeacherClassInfoModelFromJson(
    Map<String, dynamic> json) {
  return _TeacherClassInfoModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherClassInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get totalStudent => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get grade => throw _privateConstructorUsedError;

  /// Serializes this TeacherClassInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherClassInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherClassInfoModelCopyWith<TeacherClassInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherClassInfoModelCopyWith<$Res> {
  factory $TeacherClassInfoModelCopyWith(TeacherClassInfoModel value,
          $Res Function(TeacherClassInfoModel) then) =
      _$TeacherClassInfoModelCopyWithImpl<$Res, TeacherClassInfoModel>;
  @useResult
  $Res call(
      {int? id, String? name, int? totalStudent, String? code, int? grade});
}

/// @nodoc
class _$TeacherClassInfoModelCopyWithImpl<$Res,
        $Val extends TeacherClassInfoModel>
    implements $TeacherClassInfoModelCopyWith<$Res> {
  _$TeacherClassInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherClassInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? code = freezed,
    Object? grade = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherClassInfoModelImplCopyWith<$Res>
    implements $TeacherClassInfoModelCopyWith<$Res> {
  factory _$$TeacherClassInfoModelImplCopyWith(
          _$TeacherClassInfoModelImpl value,
          $Res Function(_$TeacherClassInfoModelImpl) then) =
      __$$TeacherClassInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, int? totalStudent, String? code, int? grade});
}

/// @nodoc
class __$$TeacherClassInfoModelImplCopyWithImpl<$Res>
    extends _$TeacherClassInfoModelCopyWithImpl<$Res,
        _$TeacherClassInfoModelImpl>
    implements _$$TeacherClassInfoModelImplCopyWith<$Res> {
  __$$TeacherClassInfoModelImplCopyWithImpl(_$TeacherClassInfoModelImpl _value,
      $Res Function(_$TeacherClassInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherClassInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? code = freezed,
    Object? grade = freezed,
  }) {
    return _then(_$TeacherClassInfoModelImpl(
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherClassInfoModelImpl extends _TeacherClassInfoModel {
  const _$TeacherClassInfoModelImpl(
      {this.id, this.name, this.totalStudent, this.code, this.grade})
      : super._();

  factory _$TeacherClassInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherClassInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? totalStudent;
  @override
  final String? code;
  @override
  final int? grade;

  @override
  String toString() {
    return 'TeacherClassInfoModel(id: $id, name: $name, totalStudent: $totalStudent, code: $code, grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherClassInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalStudent, totalStudent) ||
                other.totalStudent == totalStudent) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, totalStudent, code, grade);

  /// Create a copy of TeacherClassInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherClassInfoModelImplCopyWith<_$TeacherClassInfoModelImpl>
      get copyWith => __$$TeacherClassInfoModelImplCopyWithImpl<
          _$TeacherClassInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherClassInfoModelImplToJson(
      this,
    );
  }
}

abstract class _TeacherClassInfoModel extends TeacherClassInfoModel {
  const factory _TeacherClassInfoModel(
      {final int? id,
      final String? name,
      final int? totalStudent,
      final String? code,
      final int? grade}) = _$TeacherClassInfoModelImpl;
  const _TeacherClassInfoModel._() : super._();

  factory _TeacherClassInfoModel.fromJson(Map<String, dynamic> json) =
      _$TeacherClassInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get totalStudent;
  @override
  String? get code;
  @override
  int? get grade;

  /// Create a copy of TeacherClassInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherClassInfoModelImplCopyWith<_$TeacherClassInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
