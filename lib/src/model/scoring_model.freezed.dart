// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scoring_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoringModel _$ScoringModelFromJson(Map<String, dynamic> json) {
  return _ScoringModel.fromJson(json);
}

/// @nodoc
mixin _$ScoringModel {
  int? get correct => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  /// Serializes this ScoringModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoringModelCopyWith<ScoringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoringModelCopyWith<$Res> {
  factory $ScoringModelCopyWith(
          ScoringModel value, $Res Function(ScoringModel) then) =
      _$ScoringModelCopyWithImpl<$Res, ScoringModel>;
  @useResult
  $Res call({int? correct, int? total, double? score});
}

/// @nodoc
class _$ScoringModelCopyWithImpl<$Res, $Val extends ScoringModel>
    implements $ScoringModelCopyWith<$Res> {
  _$ScoringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = freezed,
    Object? total = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoringModelImplCopyWith<$Res>
    implements $ScoringModelCopyWith<$Res> {
  factory _$$ScoringModelImplCopyWith(
          _$ScoringModelImpl value, $Res Function(_$ScoringModelImpl) then) =
      __$$ScoringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? correct, int? total, double? score});
}

/// @nodoc
class __$$ScoringModelImplCopyWithImpl<$Res>
    extends _$ScoringModelCopyWithImpl<$Res, _$ScoringModelImpl>
    implements _$$ScoringModelImplCopyWith<$Res> {
  __$$ScoringModelImplCopyWithImpl(
      _$ScoringModelImpl _value, $Res Function(_$ScoringModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = freezed,
    Object? total = freezed,
    Object? score = freezed,
  }) {
    return _then(_$ScoringModelImpl(
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoringModelImpl extends _ScoringModel {
  const _$ScoringModelImpl({this.correct, this.total, this.score}) : super._();

  factory _$ScoringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoringModelImplFromJson(json);

  @override
  final int? correct;
  @override
  final int? total;
  @override
  final double? score;

  @override
  String toString() {
    return 'ScoringModel(correct: $correct, total: $total, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoringModelImpl &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correct, total, score);

  /// Create a copy of ScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoringModelImplCopyWith<_$ScoringModelImpl> get copyWith =>
      __$$ScoringModelImplCopyWithImpl<_$ScoringModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoringModelImplToJson(
      this,
    );
  }
}

abstract class _ScoringModel extends ScoringModel {
  const factory _ScoringModel(
      {final int? correct,
      final int? total,
      final double? score}) = _$ScoringModelImpl;
  const _ScoringModel._() : super._();

  factory _ScoringModel.fromJson(Map<String, dynamic> json) =
      _$ScoringModelImpl.fromJson;

  @override
  int? get correct;
  @override
  int? get total;
  @override
  double? get score;

  /// Create a copy of ScoringModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoringModelImplCopyWith<_$ScoringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
