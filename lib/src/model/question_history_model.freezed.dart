// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionHistoryModel _$QuestionHistoryModelFromJson(Map<String, dynamic> json) {
  return _QuestionHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionHistoryModel {
  String? get questionText => throw _privateConstructorUsedError;
  String? get questionImageUrl => throw _privateConstructorUsedError;
  List<ReviewAnswerChoiceModel> get answerChoices =>
      throw _privateConstructorUsedError;

  /// Serializes this QuestionHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionHistoryModelCopyWith<QuestionHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionHistoryModelCopyWith<$Res> {
  factory $QuestionHistoryModelCopyWith(QuestionHistoryModel value,
          $Res Function(QuestionHistoryModel) then) =
      _$QuestionHistoryModelCopyWithImpl<$Res, QuestionHistoryModel>;
  @useResult
  $Res call(
      {String? questionText,
      String? questionImageUrl,
      List<ReviewAnswerChoiceModel> answerChoices});
}

/// @nodoc
class _$QuestionHistoryModelCopyWithImpl<$Res,
        $Val extends QuestionHistoryModel>
    implements $QuestionHistoryModelCopyWith<$Res> {
  _$QuestionHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = freezed,
    Object? questionImageUrl = freezed,
    Object? answerChoices = null,
  }) {
    return _then(_value.copyWith(
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImageUrl: freezed == questionImageUrl
          ? _value.questionImageUrl
          : questionImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      answerChoices: null == answerChoices
          ? _value.answerChoices
          : answerChoices // ignore: cast_nullable_to_non_nullable
              as List<ReviewAnswerChoiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionHistoryModelImplCopyWith<$Res>
    implements $QuestionHistoryModelCopyWith<$Res> {
  factory _$$QuestionHistoryModelImplCopyWith(_$QuestionHistoryModelImpl value,
          $Res Function(_$QuestionHistoryModelImpl) then) =
      __$$QuestionHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? questionText,
      String? questionImageUrl,
      List<ReviewAnswerChoiceModel> answerChoices});
}

/// @nodoc
class __$$QuestionHistoryModelImplCopyWithImpl<$Res>
    extends _$QuestionHistoryModelCopyWithImpl<$Res, _$QuestionHistoryModelImpl>
    implements _$$QuestionHistoryModelImplCopyWith<$Res> {
  __$$QuestionHistoryModelImplCopyWithImpl(_$QuestionHistoryModelImpl _value,
      $Res Function(_$QuestionHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionText = freezed,
    Object? questionImageUrl = freezed,
    Object? answerChoices = null,
  }) {
    return _then(_$QuestionHistoryModelImpl(
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImageUrl: freezed == questionImageUrl
          ? _value.questionImageUrl
          : questionImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      answerChoices: null == answerChoices
          ? _value._answerChoices
          : answerChoices // ignore: cast_nullable_to_non_nullable
              as List<ReviewAnswerChoiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionHistoryModelImpl extends _QuestionHistoryModel {
  const _$QuestionHistoryModelImpl(
      {this.questionText,
      this.questionImageUrl,
      final List<ReviewAnswerChoiceModel> answerChoices =
          const <ReviewAnswerChoiceModel>[]})
      : _answerChoices = answerChoices,
        super._();

  factory _$QuestionHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionHistoryModelImplFromJson(json);

  @override
  final String? questionText;
  @override
  final String? questionImageUrl;
  final List<ReviewAnswerChoiceModel> _answerChoices;
  @override
  @JsonKey()
  List<ReviewAnswerChoiceModel> get answerChoices {
    if (_answerChoices is EqualUnmodifiableListView) return _answerChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerChoices);
  }

  @override
  String toString() {
    return 'QuestionHistoryModel(questionText: $questionText, questionImageUrl: $questionImageUrl, answerChoices: $answerChoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionHistoryModelImpl &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionImageUrl, questionImageUrl) ||
                other.questionImageUrl == questionImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._answerChoices, _answerChoices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionText, questionImageUrl,
      const DeepCollectionEquality().hash(_answerChoices));

  /// Create a copy of QuestionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionHistoryModelImplCopyWith<_$QuestionHistoryModelImpl>
      get copyWith =>
          __$$QuestionHistoryModelImplCopyWithImpl<_$QuestionHistoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionHistoryModel extends QuestionHistoryModel {
  const factory _QuestionHistoryModel(
          {final String? questionText,
          final String? questionImageUrl,
          final List<ReviewAnswerChoiceModel> answerChoices}) =
      _$QuestionHistoryModelImpl;
  const _QuestionHistoryModel._() : super._();

  factory _QuestionHistoryModel.fromJson(Map<String, dynamic> json) =
      _$QuestionHistoryModelImpl.fromJson;

  @override
  String? get questionText;
  @override
  String? get questionImageUrl;
  @override
  List<ReviewAnswerChoiceModel> get answerChoices;

  /// Create a copy of QuestionHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionHistoryModelImplCopyWith<_$QuestionHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
