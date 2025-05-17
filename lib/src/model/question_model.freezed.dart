// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int? get id => throw _privateConstructorUsedError;
  QuestionType? get questionType => throw _privateConstructorUsedError;
  String? get questionText => throw _privateConstructorUsedError;
  String? get questionImageUrl => throw _privateConstructorUsedError;
  List<AnswerChoiceModel> get answerChoices =>
      throw _privateConstructorUsedError;
  bool? get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int? id,
      QuestionType? questionType,
      String? questionText,
      String? questionImageUrl,
      List<AnswerChoiceModel> answerChoices,
      bool? isCorrect});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? questionText = freezed,
    Object? questionImageUrl = freezed,
    Object? answerChoices = null,
    Object? isCorrect = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
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
              as List<AnswerChoiceModel>,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      QuestionType? questionType,
      String? questionText,
      String? questionImageUrl,
      List<AnswerChoiceModel> answerChoices,
      bool? isCorrect});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? questionText = freezed,
    Object? questionImageUrl = freezed,
    Object? answerChoices = null,
    Object? isCorrect = freezed,
  }) {
    return _then(_$QuestionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
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
              as List<AnswerChoiceModel>,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl extends _QuestionModel {
  const _$QuestionModelImpl(
      {this.id,
      this.questionType,
      this.questionText,
      this.questionImageUrl,
      final List<AnswerChoiceModel> answerChoices = const <AnswerChoiceModel>[],
      this.isCorrect})
      : _answerChoices = answerChoices,
        super._();

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final QuestionType? questionType;
  @override
  final String? questionText;
  @override
  final String? questionImageUrl;
  final List<AnswerChoiceModel> _answerChoices;
  @override
  @JsonKey()
  List<AnswerChoiceModel> get answerChoices {
    if (_answerChoices is EqualUnmodifiableListView) return _answerChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerChoices);
  }

  @override
  final bool? isCorrect;

  @override
  String toString() {
    return 'QuestionModel(id: $id, questionType: $questionType, questionText: $questionText, questionImageUrl: $questionImageUrl, answerChoices: $answerChoices, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.questionImageUrl, questionImageUrl) ||
                other.questionImageUrl == questionImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._answerChoices, _answerChoices) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      questionType,
      questionText,
      questionImageUrl,
      const DeepCollectionEquality().hash(_answerChoices),
      isCorrect);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel extends QuestionModel {
  const factory _QuestionModel(
      {final int? id,
      final QuestionType? questionType,
      final String? questionText,
      final String? questionImageUrl,
      final List<AnswerChoiceModel> answerChoices,
      final bool? isCorrect}) = _$QuestionModelImpl;
  const _QuestionModel._() : super._();

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  int? get id;
  @override
  QuestionType? get questionType;
  @override
  String? get questionText;
  @override
  String? get questionImageUrl;
  @override
  List<AnswerChoiceModel> get answerChoices;
  @override
  bool? get isCorrect;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
