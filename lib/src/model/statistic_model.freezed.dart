// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticModel _$StatisticModelFromJson(Map<String, dynamic> json) {
  return _StatisticModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticModel {
  int? get questionSetId => throw _privateConstructorUsedError;
  int? get classroomId => throw _privateConstructorUsedError;
  String? get questionSetName => throw _privateConstructorUsedError;
  String? get questionSetDescription => throw _privateConstructorUsedError;
  String? get classroomName => throw _privateConstructorUsedError;
  int? get totalStudent => throw _privateConstructorUsedError;
  int? get totalStudentDone => throw _privateConstructorUsedError;
  double? get averageScore => throw _privateConstructorUsedError;
  double? get highestScore => throw _privateConstructorUsedError;
  double? get lowestScore => throw _privateConstructorUsedError;
  List<StudentStatisticModel> get studentResults =>
      throw _privateConstructorUsedError;

  /// Serializes this StatisticModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticModelCopyWith<StatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticModelCopyWith<$Res> {
  factory $StatisticModelCopyWith(
          StatisticModel value, $Res Function(StatisticModel) then) =
      _$StatisticModelCopyWithImpl<$Res, StatisticModel>;
  @useResult
  $Res call(
      {int? questionSetId,
      int? classroomId,
      String? questionSetName,
      String? questionSetDescription,
      String? classroomName,
      int? totalStudent,
      int? totalStudentDone,
      double? averageScore,
      double? highestScore,
      double? lowestScore,
      List<StudentStatisticModel> studentResults});
}

/// @nodoc
class _$StatisticModelCopyWithImpl<$Res, $Val extends StatisticModel>
    implements $StatisticModelCopyWith<$Res> {
  _$StatisticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionSetId = freezed,
    Object? classroomId = freezed,
    Object? questionSetName = freezed,
    Object? questionSetDescription = freezed,
    Object? classroomName = freezed,
    Object? totalStudent = freezed,
    Object? totalStudentDone = freezed,
    Object? averageScore = freezed,
    Object? highestScore = freezed,
    Object? lowestScore = freezed,
    Object? studentResults = null,
  }) {
    return _then(_value.copyWith(
      questionSetId: freezed == questionSetId
          ? _value.questionSetId
          : questionSetId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetName: freezed == questionSetName
          ? _value.questionSetName
          : questionSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      questionSetDescription: freezed == questionSetDescription
          ? _value.questionSetDescription
          : questionSetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      totalStudentDone: freezed == totalStudentDone
          ? _value.totalStudentDone
          : totalStudentDone // ignore: cast_nullable_to_non_nullable
              as int?,
      averageScore: freezed == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double?,
      highestScore: freezed == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double?,
      lowestScore: freezed == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double?,
      studentResults: null == studentResults
          ? _value.studentResults
          : studentResults // ignore: cast_nullable_to_non_nullable
              as List<StudentStatisticModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticModelImplCopyWith<$Res>
    implements $StatisticModelCopyWith<$Res> {
  factory _$$StatisticModelImplCopyWith(_$StatisticModelImpl value,
          $Res Function(_$StatisticModelImpl) then) =
      __$$StatisticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? questionSetId,
      int? classroomId,
      String? questionSetName,
      String? questionSetDescription,
      String? classroomName,
      int? totalStudent,
      int? totalStudentDone,
      double? averageScore,
      double? highestScore,
      double? lowestScore,
      List<StudentStatisticModel> studentResults});
}

/// @nodoc
class __$$StatisticModelImplCopyWithImpl<$Res>
    extends _$StatisticModelCopyWithImpl<$Res, _$StatisticModelImpl>
    implements _$$StatisticModelImplCopyWith<$Res> {
  __$$StatisticModelImplCopyWithImpl(
      _$StatisticModelImpl _value, $Res Function(_$StatisticModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionSetId = freezed,
    Object? classroomId = freezed,
    Object? questionSetName = freezed,
    Object? questionSetDescription = freezed,
    Object? classroomName = freezed,
    Object? totalStudent = freezed,
    Object? totalStudentDone = freezed,
    Object? averageScore = freezed,
    Object? highestScore = freezed,
    Object? lowestScore = freezed,
    Object? studentResults = null,
  }) {
    return _then(_$StatisticModelImpl(
      questionSetId: freezed == questionSetId
          ? _value.questionSetId
          : questionSetId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetName: freezed == questionSetName
          ? _value.questionSetName
          : questionSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      questionSetDescription: freezed == questionSetDescription
          ? _value.questionSetDescription
          : questionSetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudent: freezed == totalStudent
          ? _value.totalStudent
          : totalStudent // ignore: cast_nullable_to_non_nullable
              as int?,
      totalStudentDone: freezed == totalStudentDone
          ? _value.totalStudentDone
          : totalStudentDone // ignore: cast_nullable_to_non_nullable
              as int?,
      averageScore: freezed == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double?,
      highestScore: freezed == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double?,
      lowestScore: freezed == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double?,
      studentResults: null == studentResults
          ? _value._studentResults
          : studentResults // ignore: cast_nullable_to_non_nullable
              as List<StudentStatisticModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticModelImpl extends _StatisticModel {
  const _$StatisticModelImpl(
      {this.questionSetId,
      this.classroomId,
      this.questionSetName,
      this.questionSetDescription,
      this.classroomName,
      this.totalStudent,
      this.totalStudentDone,
      this.averageScore,
      this.highestScore,
      this.lowestScore,
      final List<StudentStatisticModel> studentResults = const []})
      : _studentResults = studentResults,
        super._();

  factory _$StatisticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticModelImplFromJson(json);

  @override
  final int? questionSetId;
  @override
  final int? classroomId;
  @override
  final String? questionSetName;
  @override
  final String? questionSetDescription;
  @override
  final String? classroomName;
  @override
  final int? totalStudent;
  @override
  final int? totalStudentDone;
  @override
  final double? averageScore;
  @override
  final double? highestScore;
  @override
  final double? lowestScore;
  final List<StudentStatisticModel> _studentResults;
  @override
  @JsonKey()
  List<StudentStatisticModel> get studentResults {
    if (_studentResults is EqualUnmodifiableListView) return _studentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentResults);
  }

  @override
  String toString() {
    return 'StatisticModel(questionSetId: $questionSetId, classroomId: $classroomId, questionSetName: $questionSetName, questionSetDescription: $questionSetDescription, classroomName: $classroomName, totalStudent: $totalStudent, totalStudentDone: $totalStudentDone, averageScore: $averageScore, highestScore: $highestScore, lowestScore: $lowestScore, studentResults: $studentResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticModelImpl &&
            (identical(other.questionSetId, questionSetId) ||
                other.questionSetId == questionSetId) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.questionSetName, questionSetName) ||
                other.questionSetName == questionSetName) &&
            (identical(other.questionSetDescription, questionSetDescription) ||
                other.questionSetDescription == questionSetDescription) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.totalStudent, totalStudent) ||
                other.totalStudent == totalStudent) &&
            (identical(other.totalStudentDone, totalStudentDone) ||
                other.totalStudentDone == totalStudentDone) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.highestScore, highestScore) ||
                other.highestScore == highestScore) &&
            (identical(other.lowestScore, lowestScore) ||
                other.lowestScore == lowestScore) &&
            const DeepCollectionEquality()
                .equals(other._studentResults, _studentResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionSetId,
      classroomId,
      questionSetName,
      questionSetDescription,
      classroomName,
      totalStudent,
      totalStudentDone,
      averageScore,
      highestScore,
      lowestScore,
      const DeepCollectionEquality().hash(_studentResults));

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticModelImplCopyWith<_$StatisticModelImpl> get copyWith =>
      __$$StatisticModelImplCopyWithImpl<_$StatisticModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticModelImplToJson(
      this,
    );
  }
}

abstract class _StatisticModel extends StatisticModel {
  const factory _StatisticModel(
      {final int? questionSetId,
      final int? classroomId,
      final String? questionSetName,
      final String? questionSetDescription,
      final String? classroomName,
      final int? totalStudent,
      final int? totalStudentDone,
      final double? averageScore,
      final double? highestScore,
      final double? lowestScore,
      final List<StudentStatisticModel> studentResults}) = _$StatisticModelImpl;
  const _StatisticModel._() : super._();

  factory _StatisticModel.fromJson(Map<String, dynamic> json) =
      _$StatisticModelImpl.fromJson;

  @override
  int? get questionSetId;
  @override
  int? get classroomId;
  @override
  String? get questionSetName;
  @override
  String? get questionSetDescription;
  @override
  String? get classroomName;
  @override
  int? get totalStudent;
  @override
  int? get totalStudentDone;
  @override
  double? get averageScore;
  @override
  double? get highestScore;
  @override
  double? get lowestScore;
  @override
  List<StudentStatisticModel> get studentResults;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticModelImplCopyWith<_$StatisticModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
