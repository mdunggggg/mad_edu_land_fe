// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_answer_choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewAnswerChoiceModel _$ReviewAnswerChoiceModelFromJson(
    Map<String, dynamic> json) {
  return _ReviewAnswerChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewAnswerChoiceModel {
  String? get choiceLabel => throw _privateConstructorUsedError;
  String? get answerText => throw _privateConstructorUsedError;
  String? get answerImageUrl => throw _privateConstructorUsedError;
  bool? get submittedByStudent => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;

  /// Serializes this ReviewAnswerChoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewAnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewAnswerChoiceModelCopyWith<ReviewAnswerChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAnswerChoiceModelCopyWith<$Res> {
  factory $ReviewAnswerChoiceModelCopyWith(ReviewAnswerChoiceModel value,
          $Res Function(ReviewAnswerChoiceModel) then) =
      _$ReviewAnswerChoiceModelCopyWithImpl<$Res, ReviewAnswerChoiceModel>;
  @useResult
  $Res call(
      {String? choiceLabel,
      String? answerText,
      String? answerImageUrl,
      bool? submittedByStudent,
      bool? correct});
}

/// @nodoc
class _$ReviewAnswerChoiceModelCopyWithImpl<$Res,
        $Val extends ReviewAnswerChoiceModel>
    implements $ReviewAnswerChoiceModelCopyWith<$Res> {
  _$ReviewAnswerChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewAnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choiceLabel = freezed,
    Object? answerText = freezed,
    Object? answerImageUrl = freezed,
    Object? submittedByStudent = freezed,
    Object? correct = freezed,
  }) {
    return _then(_value.copyWith(
      choiceLabel: freezed == choiceLabel
          ? _value.choiceLabel
          : choiceLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerImageUrl: freezed == answerImageUrl
          ? _value.answerImageUrl
          : answerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedByStudent: freezed == submittedByStudent
          ? _value.submittedByStudent
          : submittedByStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewAnswerChoiceModelImplCopyWith<$Res>
    implements $ReviewAnswerChoiceModelCopyWith<$Res> {
  factory _$$ReviewAnswerChoiceModelImplCopyWith(
          _$ReviewAnswerChoiceModelImpl value,
          $Res Function(_$ReviewAnswerChoiceModelImpl) then) =
      __$$ReviewAnswerChoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? choiceLabel,
      String? answerText,
      String? answerImageUrl,
      bool? submittedByStudent,
      bool? correct});
}

/// @nodoc
class __$$ReviewAnswerChoiceModelImplCopyWithImpl<$Res>
    extends _$ReviewAnswerChoiceModelCopyWithImpl<$Res,
        _$ReviewAnswerChoiceModelImpl>
    implements _$$ReviewAnswerChoiceModelImplCopyWith<$Res> {
  __$$ReviewAnswerChoiceModelImplCopyWithImpl(
      _$ReviewAnswerChoiceModelImpl _value,
      $Res Function(_$ReviewAnswerChoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewAnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choiceLabel = freezed,
    Object? answerText = freezed,
    Object? answerImageUrl = freezed,
    Object? submittedByStudent = freezed,
    Object? correct = freezed,
  }) {
    return _then(_$ReviewAnswerChoiceModelImpl(
      choiceLabel: freezed == choiceLabel
          ? _value.choiceLabel
          : choiceLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerImageUrl: freezed == answerImageUrl
          ? _value.answerImageUrl
          : answerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedByStudent: freezed == submittedByStudent
          ? _value.submittedByStudent
          : submittedByStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewAnswerChoiceModelImpl extends _ReviewAnswerChoiceModel {
  const _$ReviewAnswerChoiceModelImpl(
      {this.choiceLabel,
      this.answerText,
      this.answerImageUrl,
      this.submittedByStudent,
      this.correct})
      : super._();

  factory _$ReviewAnswerChoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewAnswerChoiceModelImplFromJson(json);

  @override
  final String? choiceLabel;
  @override
  final String? answerText;
  @override
  final String? answerImageUrl;
  @override
  final bool? submittedByStudent;
  @override
  final bool? correct;

  @override
  String toString() {
    return 'ReviewAnswerChoiceModel(choiceLabel: $choiceLabel, answerText: $answerText, answerImageUrl: $answerImageUrl, submittedByStudent: $submittedByStudent, correct: $correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAnswerChoiceModelImpl &&
            (identical(other.choiceLabel, choiceLabel) ||
                other.choiceLabel == choiceLabel) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.answerImageUrl, answerImageUrl) ||
                other.answerImageUrl == answerImageUrl) &&
            (identical(other.submittedByStudent, submittedByStudent) ||
                other.submittedByStudent == submittedByStudent) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, choiceLabel, answerText,
      answerImageUrl, submittedByStudent, correct);

  /// Create a copy of ReviewAnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAnswerChoiceModelImplCopyWith<_$ReviewAnswerChoiceModelImpl>
      get copyWith => __$$ReviewAnswerChoiceModelImplCopyWithImpl<
          _$ReviewAnswerChoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewAnswerChoiceModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewAnswerChoiceModel extends ReviewAnswerChoiceModel {
  const factory _ReviewAnswerChoiceModel(
      {final String? choiceLabel,
      final String? answerText,
      final String? answerImageUrl,
      final bool? submittedByStudent,
      final bool? correct}) = _$ReviewAnswerChoiceModelImpl;
  const _ReviewAnswerChoiceModel._() : super._();

  factory _ReviewAnswerChoiceModel.fromJson(Map<String, dynamic> json) =
      _$ReviewAnswerChoiceModelImpl.fromJson;

  @override
  String? get choiceLabel;
  @override
  String? get answerText;
  @override
  String? get answerImageUrl;
  @override
  bool? get submittedByStudent;
  @override
  bool? get correct;

  /// Create a copy of ReviewAnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewAnswerChoiceModelImplCopyWith<_$ReviewAnswerChoiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
