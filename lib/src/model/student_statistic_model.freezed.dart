// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_statistic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentStatisticModel _$StudentStatisticModelFromJson(
    Map<String, dynamic> json) {
  return _StudentStatisticModel.fromJson(json);
}

/// @nodoc
mixin _$StudentStatisticModel {
  int? get userId => throw _privateConstructorUsedError;
  int? get studentId => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  int? get correctAnswerCount => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  DateTime? get doAt => throw _privateConstructorUsedError;

  /// Serializes this StudentStatisticModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentStatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentStatisticModelCopyWith<StudentStatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStatisticModelCopyWith<$Res> {
  factory $StudentStatisticModelCopyWith(StudentStatisticModel value,
          $Res Function(StudentStatisticModel) then) =
      _$StudentStatisticModelCopyWithImpl<$Res, StudentStatisticModel>;
  @useResult
  $Res call(
      {int? userId,
      int? studentId,
      String? fullName,
      double? score,
      int? correctAnswerCount,
      bool? done,
      DateTime? doAt});
}

/// @nodoc
class _$StudentStatisticModelCopyWithImpl<$Res,
        $Val extends StudentStatisticModel>
    implements $StudentStatisticModelCopyWith<$Res> {
  _$StudentStatisticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentStatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? score = freezed,
    Object? correctAnswerCount = freezed,
    Object? done = freezed,
    Object? doAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      correctAnswerCount: freezed == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      doAt: freezed == doAt
          ? _value.doAt
          : doAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentStatisticModelImplCopyWith<$Res>
    implements $StudentStatisticModelCopyWith<$Res> {
  factory _$$StudentStatisticModelImplCopyWith(
          _$StudentStatisticModelImpl value,
          $Res Function(_$StudentStatisticModelImpl) then) =
      __$$StudentStatisticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? studentId,
      String? fullName,
      double? score,
      int? correctAnswerCount,
      bool? done,
      DateTime? doAt});
}

/// @nodoc
class __$$StudentStatisticModelImplCopyWithImpl<$Res>
    extends _$StudentStatisticModelCopyWithImpl<$Res,
        _$StudentStatisticModelImpl>
    implements _$$StudentStatisticModelImplCopyWith<$Res> {
  __$$StudentStatisticModelImplCopyWithImpl(_$StudentStatisticModelImpl _value,
      $Res Function(_$StudentStatisticModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentStatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? score = freezed,
    Object? correctAnswerCount = freezed,
    Object? done = freezed,
    Object? doAt = freezed,
  }) {
    return _then(_$StudentStatisticModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      correctAnswerCount: freezed == correctAnswerCount
          ? _value.correctAnswerCount
          : correctAnswerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      doAt: freezed == doAt
          ? _value.doAt
          : doAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentStatisticModelImpl extends _StudentStatisticModel {
  const _$StudentStatisticModelImpl(
      {this.userId,
      this.studentId,
      this.fullName,
      this.score,
      this.correctAnswerCount,
      this.done,
      this.doAt})
      : super._();

  factory _$StudentStatisticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentStatisticModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? studentId;
  @override
  final String? fullName;
  @override
  final double? score;
  @override
  final int? correctAnswerCount;
  @override
  final bool? done;
  @override
  final DateTime? doAt;

  @override
  String toString() {
    return 'StudentStatisticModel(userId: $userId, studentId: $studentId, fullName: $fullName, score: $score, correctAnswerCount: $correctAnswerCount, done: $done, doAt: $doAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStatisticModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.correctAnswerCount, correctAnswerCount) ||
                other.correctAnswerCount == correctAnswerCount) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.doAt, doAt) || other.doAt == doAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, studentId, fullName,
      score, correctAnswerCount, done, doAt);

  /// Create a copy of StudentStatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStatisticModelImplCopyWith<_$StudentStatisticModelImpl>
      get copyWith => __$$StudentStatisticModelImplCopyWithImpl<
          _$StudentStatisticModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentStatisticModelImplToJson(
      this,
    );
  }
}

abstract class _StudentStatisticModel extends StudentStatisticModel {
  const factory _StudentStatisticModel(
      {final int? userId,
      final int? studentId,
      final String? fullName,
      final double? score,
      final int? correctAnswerCount,
      final bool? done,
      final DateTime? doAt}) = _$StudentStatisticModelImpl;
  const _StudentStatisticModel._() : super._();

  factory _StudentStatisticModel.fromJson(Map<String, dynamic> json) =
      _$StudentStatisticModelImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get studentId;
  @override
  String? get fullName;
  @override
  double? get score;
  @override
  int? get correctAnswerCount;
  @override
  bool? get done;
  @override
  DateTime? get doAt;

  /// Create a copy of StudentStatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentStatisticModelImplCopyWith<_$StudentStatisticModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
