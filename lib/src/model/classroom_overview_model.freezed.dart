// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassroomOverviewModel _$ClassroomOverviewModelFromJson(
    Map<String, dynamic> json) {
  return _ClassroomOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$ClassroomOverviewModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get totalStudent => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get grade => throw _privateConstructorUsedError;

  /// Serializes this ClassroomOverviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomOverviewModelCopyWith<ClassroomOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomOverviewModelCopyWith<$Res> {
  factory $ClassroomOverviewModelCopyWith(ClassroomOverviewModel value,
          $Res Function(ClassroomOverviewModel) then) =
      _$ClassroomOverviewModelCopyWithImpl<$Res, ClassroomOverviewModel>;
  @useResult
  $Res call(
      {int? id, String? name, int? totalStudent, String? code, int? grade});
}

/// @nodoc
class _$ClassroomOverviewModelCopyWithImpl<$Res,
        $Val extends ClassroomOverviewModel>
    implements $ClassroomOverviewModelCopyWith<$Res> {
  _$ClassroomOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomOverviewModel
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
abstract class _$$ClassroomOverviewModelImplCopyWith<$Res>
    implements $ClassroomOverviewModelCopyWith<$Res> {
  factory _$$ClassroomOverviewModelImplCopyWith(
          _$ClassroomOverviewModelImpl value,
          $Res Function(_$ClassroomOverviewModelImpl) then) =
      __$$ClassroomOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, int? totalStudent, String? code, int? grade});
}

/// @nodoc
class __$$ClassroomOverviewModelImplCopyWithImpl<$Res>
    extends _$ClassroomOverviewModelCopyWithImpl<$Res,
        _$ClassroomOverviewModelImpl>
    implements _$$ClassroomOverviewModelImplCopyWith<$Res> {
  __$$ClassroomOverviewModelImplCopyWithImpl(
      _$ClassroomOverviewModelImpl _value,
      $Res Function(_$ClassroomOverviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomOverviewModel
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
    return _then(_$ClassroomOverviewModelImpl(
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
class _$ClassroomOverviewModelImpl extends _ClassroomOverviewModel {
  const _$ClassroomOverviewModelImpl(
      {this.id, this.name, this.totalStudent, this.code, this.grade})
      : super._();

  factory _$ClassroomOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomOverviewModelImplFromJson(json);

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
    return 'ClassroomOverviewModel(id: $id, name: $name, totalStudent: $totalStudent, code: $code, grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomOverviewModelImpl &&
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

  /// Create a copy of ClassroomOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomOverviewModelImplCopyWith<_$ClassroomOverviewModelImpl>
      get copyWith => __$$ClassroomOverviewModelImplCopyWithImpl<
          _$ClassroomOverviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomOverviewModelImplToJson(
      this,
    );
  }
}

abstract class _ClassroomOverviewModel extends ClassroomOverviewModel {
  const factory _ClassroomOverviewModel(
      {final int? id,
      final String? name,
      final int? totalStudent,
      final String? code,
      final int? grade}) = _$ClassroomOverviewModelImpl;
  const _ClassroomOverviewModel._() : super._();

  factory _ClassroomOverviewModel.fromJson(Map<String, dynamic> json) =
      _$ClassroomOverviewModelImpl.fromJson;

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

  /// Create a copy of ClassroomOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomOverviewModelImplCopyWith<_$ClassroomOverviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
