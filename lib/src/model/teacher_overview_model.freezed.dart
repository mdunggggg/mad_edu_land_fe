// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherOverviewModel _$TeacherOverviewModelFromJson(Map<String, dynamic> json) {
  return _TeacherOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherOverviewModel {
  String? get name => throw _privateConstructorUsedError;
  int? get totalStudent => throw _privateConstructorUsedError;
  int? get totalClass => throw _privateConstructorUsedError;
  List<ClassroomOverviewModel> get classrooms =>
      throw _privateConstructorUsedError;

  /// Serializes this TeacherOverviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherOverviewModelCopyWith<TeacherOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherOverviewModelCopyWith<$Res> {
  factory $TeacherOverviewModelCopyWith(TeacherOverviewModel value,
          $Res Function(TeacherOverviewModel) then) =
      _$TeacherOverviewModelCopyWithImpl<$Res, TeacherOverviewModel>;
  @useResult
  $Res call(
      {String? name,
      int? totalStudent,
      int? totalClass,
      List<ClassroomOverviewModel> classrooms});
}

/// @nodoc
class _$TeacherOverviewModelCopyWithImpl<$Res,
        $Val extends TeacherOverviewModel>
    implements $TeacherOverviewModelCopyWith<$Res> {
  _$TeacherOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? totalClass = freezed,
    Object? classrooms = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      totalClass: freezed == totalClass
          ? _value.totalClass
          : totalClass // ignore: cast_nullable_to_non_nullable
              as int?,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassroomOverviewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherOverviewModelImplCopyWith<$Res>
    implements $TeacherOverviewModelCopyWith<$Res> {
  factory _$$TeacherOverviewModelImplCopyWith(_$TeacherOverviewModelImpl value,
          $Res Function(_$TeacherOverviewModelImpl) then) =
      __$$TeacherOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? totalStudent,
      int? totalClass,
      List<ClassroomOverviewModel> classrooms});
}

/// @nodoc
class __$$TeacherOverviewModelImplCopyWithImpl<$Res>
    extends _$TeacherOverviewModelCopyWithImpl<$Res, _$TeacherOverviewModelImpl>
    implements _$$TeacherOverviewModelImplCopyWith<$Res> {
  __$$TeacherOverviewModelImplCopyWithImpl(_$TeacherOverviewModelImpl _value,
      $Res Function(_$TeacherOverviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? totalStudent = freezed,
    Object? totalClass = freezed,
    Object? classrooms = null,
  }) {
    return _then(_$TeacherOverviewModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      totalClass: freezed == totalClass
          ? _value.totalClass
          : totalClass // ignore: cast_nullable_to_non_nullable
              as int?,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassroomOverviewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherOverviewModelImpl extends _TeacherOverviewModel {
  const _$TeacherOverviewModelImpl(
      {this.name,
      this.totalStudent,
      this.totalClass,
      final List<ClassroomOverviewModel> classrooms = const []})
      : _classrooms = classrooms,
        super._();

  factory _$TeacherOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherOverviewModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? totalStudent;
  @override
  final int? totalClass;
  final List<ClassroomOverviewModel> _classrooms;
  @override
  @JsonKey()
  List<ClassroomOverviewModel> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  @override
  String toString() {
    return 'TeacherOverviewModel(name: $name, totalStudent: $totalStudent, totalClass: $totalClass, classrooms: $classrooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherOverviewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalStudent, totalStudent) ||
                other.totalStudent == totalStudent) &&
            (identical(other.totalClass, totalClass) ||
                other.totalClass == totalClass) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, totalStudent, totalClass,
      const DeepCollectionEquality().hash(_classrooms));

  /// Create a copy of TeacherOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherOverviewModelImplCopyWith<_$TeacherOverviewModelImpl>
      get copyWith =>
          __$$TeacherOverviewModelImplCopyWithImpl<_$TeacherOverviewModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherOverviewModelImplToJson(
      this,
    );
  }
}

abstract class _TeacherOverviewModel extends TeacherOverviewModel {
  const factory _TeacherOverviewModel(
          {final String? name,
          final int? totalStudent,
          final int? totalClass,
          final List<ClassroomOverviewModel> classrooms}) =
      _$TeacherOverviewModelImpl;
  const _TeacherOverviewModel._() : super._();

  factory _TeacherOverviewModel.fromJson(Map<String, dynamic> json) =
      _$TeacherOverviewModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get totalStudent;
  @override
  int? get totalClass;
  @override
  List<ClassroomOverviewModel> get classrooms;

  /// Create a copy of TeacherOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherOverviewModelImplCopyWith<_$TeacherOverviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
