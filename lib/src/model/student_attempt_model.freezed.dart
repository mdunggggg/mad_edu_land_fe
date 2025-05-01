// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attempt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentAttemptModel _$StudentAttemptModelFromJson(Map<String, dynamic> json) {
  return _StudentAttemptModel.fromJson(json);
}

/// @nodoc
mixin _$StudentAttemptModel {
  double? get score => throw _privateConstructorUsedError;
  int? get timeTaken => throw _privateConstructorUsedError;
  int? get correct => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get finishedAt => throw _privateConstructorUsedError;

  /// Serializes this StudentAttemptModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttemptModelCopyWith<StudentAttemptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttemptModelCopyWith<$Res> {
  factory $StudentAttemptModelCopyWith(
          StudentAttemptModel value, $Res Function(StudentAttemptModel) then) =
      _$StudentAttemptModelCopyWithImpl<$Res, StudentAttemptModel>;
  @useResult
  $Res call(
      {double? score,
      int? timeTaken,
      int? correct,
      int? total,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? finishedAt});
}

/// @nodoc
class _$StudentAttemptModelCopyWithImpl<$Res, $Val extends StudentAttemptModel>
    implements $StudentAttemptModelCopyWith<$Res> {
  _$StudentAttemptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? timeTaken = freezed,
    Object? correct = freezed,
    Object? total = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentAttemptModelImplCopyWith<$Res>
    implements $StudentAttemptModelCopyWith<$Res> {
  factory _$$StudentAttemptModelImplCopyWith(_$StudentAttemptModelImpl value,
          $Res Function(_$StudentAttemptModelImpl) then) =
      __$$StudentAttemptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? score,
      int? timeTaken,
      int? correct,
      int? total,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? finishedAt});
}

/// @nodoc
class __$$StudentAttemptModelImplCopyWithImpl<$Res>
    extends _$StudentAttemptModelCopyWithImpl<$Res, _$StudentAttemptModelImpl>
    implements _$$StudentAttemptModelImplCopyWith<$Res> {
  __$$StudentAttemptModelImplCopyWithImpl(_$StudentAttemptModelImpl _value,
      $Res Function(_$StudentAttemptModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? timeTaken = freezed,
    Object? correct = freezed,
    Object? total = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_$StudentAttemptModelImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAttemptModelImpl extends _StudentAttemptModel {
  const _$StudentAttemptModelImpl(
      {this.score,
      this.timeTaken,
      this.correct,
      this.total,
      this.createdAt,
      this.startedAt,
      this.finishedAt})
      : super._();

  factory _$StudentAttemptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAttemptModelImplFromJson(json);

  @override
  final double? score;
  @override
  final int? timeTaken;
  @override
  final int? correct;
  @override
  final int? total;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;

  @override
  String toString() {
    return 'StudentAttemptModel(score: $score, timeTaken: $timeTaken, correct: $correct, total: $total, createdAt: $createdAt, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttemptModelImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.timeTaken, timeTaken) ||
                other.timeTaken == timeTaken) &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, score, timeTaken, correct, total,
      createdAt, startedAt, finishedAt);

  /// Create a copy of StudentAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttemptModelImplCopyWith<_$StudentAttemptModelImpl> get copyWith =>
      __$$StudentAttemptModelImplCopyWithImpl<_$StudentAttemptModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAttemptModelImplToJson(
      this,
    );
  }
}

abstract class _StudentAttemptModel extends StudentAttemptModel {
  const factory _StudentAttemptModel(
      {final double? score,
      final int? timeTaken,
      final int? correct,
      final int? total,
      final DateTime? createdAt,
      final DateTime? startedAt,
      final DateTime? finishedAt}) = _$StudentAttemptModelImpl;
  const _StudentAttemptModel._() : super._();

  factory _StudentAttemptModel.fromJson(Map<String, dynamic> json) =
      _$StudentAttemptModelImpl.fromJson;

  @override
  double? get score;
  @override
  int? get timeTaken;
  @override
  int? get correct;
  @override
  int? get total;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get finishedAt;

  /// Create a copy of StudentAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttemptModelImplCopyWith<_$StudentAttemptModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
