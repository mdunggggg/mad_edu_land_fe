// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_quiz_played.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryQuizPlayed _$HistoryQuizPlayedFromJson(Map<String, dynamic> json) {
  return _HistoryQuizPlayed.fromJson(json);
}

/// @nodoc
mixin _$HistoryQuizPlayed {
  int? get id => throw _privateConstructorUsedError;
  int? get questionSetId => throw _privateConstructorUsedError;
  String? get questionSetName => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int? get totalQuestions => throw _privateConstructorUsedError;
  int? get correct => throw _privateConstructorUsedError;
  int? get timeTaken => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<QuestionHistoryModel> get questionHistory =>
      throw _privateConstructorUsedError;

  /// Serializes this HistoryQuizPlayed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryQuizPlayed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryQuizPlayedCopyWith<HistoryQuizPlayed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryQuizPlayedCopyWith<$Res> {
  factory $HistoryQuizPlayedCopyWith(
          HistoryQuizPlayed value, $Res Function(HistoryQuizPlayed) then) =
      _$HistoryQuizPlayedCopyWithImpl<$Res, HistoryQuizPlayed>;
  @useResult
  $Res call(
      {int? id,
      int? questionSetId,
      String? questionSetName,
      DateTime? startTime,
      DateTime? endTime,
      int? totalQuestions,
      int? correct,
      int? timeTaken,
      double? score,
      List<QuestionHistoryModel> questionHistory});
}

/// @nodoc
class _$HistoryQuizPlayedCopyWithImpl<$Res, $Val extends HistoryQuizPlayed>
    implements $HistoryQuizPlayedCopyWith<$Res> {
  _$HistoryQuizPlayedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryQuizPlayed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionSetId = freezed,
    Object? questionSetName = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalQuestions = freezed,
    Object? correct = freezed,
    Object? timeTaken = freezed,
    Object? score = freezed,
    Object? questionHistory = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetId: freezed == questionSetId
          ? _value.questionSetId
          : questionSetId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetName: freezed == questionSetName
          ? _value.questionSetName
          : questionSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      questionHistory: null == questionHistory
          ? _value.questionHistory
          : questionHistory // ignore: cast_nullable_to_non_nullable
              as List<QuestionHistoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryQuizPlayedImplCopyWith<$Res>
    implements $HistoryQuizPlayedCopyWith<$Res> {
  factory _$$HistoryQuizPlayedImplCopyWith(_$HistoryQuizPlayedImpl value,
          $Res Function(_$HistoryQuizPlayedImpl) then) =
      __$$HistoryQuizPlayedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? questionSetId,
      String? questionSetName,
      DateTime? startTime,
      DateTime? endTime,
      int? totalQuestions,
      int? correct,
      int? timeTaken,
      double? score,
      List<QuestionHistoryModel> questionHistory});
}

/// @nodoc
class __$$HistoryQuizPlayedImplCopyWithImpl<$Res>
    extends _$HistoryQuizPlayedCopyWithImpl<$Res, _$HistoryQuizPlayedImpl>
    implements _$$HistoryQuizPlayedImplCopyWith<$Res> {
  __$$HistoryQuizPlayedImplCopyWithImpl(_$HistoryQuizPlayedImpl _value,
      $Res Function(_$HistoryQuizPlayedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryQuizPlayed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionSetId = freezed,
    Object? questionSetName = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalQuestions = freezed,
    Object? correct = freezed,
    Object? timeTaken = freezed,
    Object? score = freezed,
    Object? questionHistory = null,
  }) {
    return _then(_$HistoryQuizPlayedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetId: freezed == questionSetId
          ? _value.questionSetId
          : questionSetId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionSetName: freezed == questionSetName
          ? _value.questionSetName
          : questionSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      questionHistory: null == questionHistory
          ? _value._questionHistory
          : questionHistory // ignore: cast_nullable_to_non_nullable
              as List<QuestionHistoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryQuizPlayedImpl extends _HistoryQuizPlayed {
  const _$HistoryQuizPlayedImpl(
      {this.id,
      this.questionSetId,
      this.questionSetName,
      this.startTime,
      this.endTime,
      this.totalQuestions,
      this.correct,
      this.timeTaken,
      this.score,
      final List<QuestionHistoryModel> questionHistory =
          const <QuestionHistoryModel>[]})
      : _questionHistory = questionHistory,
        super._();

  factory _$HistoryQuizPlayedImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryQuizPlayedImplFromJson(json);

  @override
  final int? id;
  @override
  final int? questionSetId;
  @override
  final String? questionSetName;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final int? totalQuestions;
  @override
  final int? correct;
  @override
  final int? timeTaken;
  @override
  final double? score;
  final List<QuestionHistoryModel> _questionHistory;
  @override
  @JsonKey()
  List<QuestionHistoryModel> get questionHistory {
    if (_questionHistory is EqualUnmodifiableListView) return _questionHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionHistory);
  }

  @override
  String toString() {
    return 'HistoryQuizPlayed(id: $id, questionSetId: $questionSetId, questionSetName: $questionSetName, startTime: $startTime, endTime: $endTime, totalQuestions: $totalQuestions, correct: $correct, timeTaken: $timeTaken, score: $score, questionHistory: $questionHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryQuizPlayedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionSetId, questionSetId) ||
                other.questionSetId == questionSetId) &&
            (identical(other.questionSetName, questionSetName) ||
                other.questionSetName == questionSetName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.timeTaken, timeTaken) ||
                other.timeTaken == timeTaken) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._questionHistory, _questionHistory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      questionSetId,
      questionSetName,
      startTime,
      endTime,
      totalQuestions,
      correct,
      timeTaken,
      score,
      const DeepCollectionEquality().hash(_questionHistory));

  /// Create a copy of HistoryQuizPlayed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryQuizPlayedImplCopyWith<_$HistoryQuizPlayedImpl> get copyWith =>
      __$$HistoryQuizPlayedImplCopyWithImpl<_$HistoryQuizPlayedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryQuizPlayedImplToJson(
      this,
    );
  }
}

abstract class _HistoryQuizPlayed extends HistoryQuizPlayed {
  const factory _HistoryQuizPlayed(
          {final int? id,
          final int? questionSetId,
          final String? questionSetName,
          final DateTime? startTime,
          final DateTime? endTime,
          final int? totalQuestions,
          final int? correct,
          final int? timeTaken,
          final double? score,
          final List<QuestionHistoryModel> questionHistory}) =
      _$HistoryQuizPlayedImpl;
  const _HistoryQuizPlayed._() : super._();

  factory _HistoryQuizPlayed.fromJson(Map<String, dynamic> json) =
      _$HistoryQuizPlayedImpl.fromJson;

  @override
  int? get id;
  @override
  int? get questionSetId;
  @override
  String? get questionSetName;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  int? get totalQuestions;
  @override
  int? get correct;
  @override
  int? get timeTaken;
  @override
  double? get score;
  @override
  List<QuestionHistoryModel> get questionHistory;

  /// Create a copy of HistoryQuizPlayed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryQuizPlayedImplCopyWith<_$HistoryQuizPlayedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
