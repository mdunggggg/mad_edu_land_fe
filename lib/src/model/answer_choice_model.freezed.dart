// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerChoiceModel _$AnswerChoiceModelFromJson(Map<String, dynamic> json) {
  return _AnswerChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerChoiceModel {
  int? get id => throw _privateConstructorUsedError;
  String? get choiceLabel => throw _privateConstructorUsedError;
  String? get answerText => throw _privateConstructorUsedError;
  String? get answerImageUrl => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this AnswerChoiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerChoiceModelCopyWith<AnswerChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerChoiceModelCopyWith<$Res> {
  factory $AnswerChoiceModelCopyWith(
          AnswerChoiceModel value, $Res Function(AnswerChoiceModel) then) =
      _$AnswerChoiceModelCopyWithImpl<$Res, AnswerChoiceModel>;
  @useResult
  $Res call(
      {int? id,
      String? choiceLabel,
      String? answerText,
      String? answerImageUrl,
      bool isSelected});
}

/// @nodoc
class _$AnswerChoiceModelCopyWithImpl<$Res, $Val extends AnswerChoiceModel>
    implements $AnswerChoiceModelCopyWith<$Res> {
  _$AnswerChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? choiceLabel = freezed,
    Object? answerText = freezed,
    Object? answerImageUrl = freezed,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerChoiceModelImplCopyWith<$Res>
    implements $AnswerChoiceModelCopyWith<$Res> {
  factory _$$AnswerChoiceModelImplCopyWith(_$AnswerChoiceModelImpl value,
          $Res Function(_$AnswerChoiceModelImpl) then) =
      __$$AnswerChoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? choiceLabel,
      String? answerText,
      String? answerImageUrl,
      bool isSelected});
}

/// @nodoc
class __$$AnswerChoiceModelImplCopyWithImpl<$Res>
    extends _$AnswerChoiceModelCopyWithImpl<$Res, _$AnswerChoiceModelImpl>
    implements _$$AnswerChoiceModelImplCopyWith<$Res> {
  __$$AnswerChoiceModelImplCopyWithImpl(_$AnswerChoiceModelImpl _value,
      $Res Function(_$AnswerChoiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? choiceLabel = freezed,
    Object? answerText = freezed,
    Object? answerImageUrl = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$AnswerChoiceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerChoiceModelImpl extends _AnswerChoiceModel {
  const _$AnswerChoiceModelImpl(
      {this.id,
      this.choiceLabel,
      this.answerText,
      this.answerImageUrl,
      this.isSelected = false})
      : super._();

  factory _$AnswerChoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerChoiceModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? choiceLabel;
  @override
  final String? answerText;
  @override
  final String? answerImageUrl;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'AnswerChoiceModel(id: $id, choiceLabel: $choiceLabel, answerText: $answerText, answerImageUrl: $answerImageUrl, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerChoiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.choiceLabel, choiceLabel) ||
                other.choiceLabel == choiceLabel) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.answerImageUrl, answerImageUrl) ||
                other.answerImageUrl == answerImageUrl) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, choiceLabel, answerText, answerImageUrl, isSelected);

  /// Create a copy of AnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerChoiceModelImplCopyWith<_$AnswerChoiceModelImpl> get copyWith =>
      __$$AnswerChoiceModelImplCopyWithImpl<_$AnswerChoiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerChoiceModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerChoiceModel extends AnswerChoiceModel {
  const factory _AnswerChoiceModel(
      {final int? id,
      final String? choiceLabel,
      final String? answerText,
      final String? answerImageUrl,
      final bool isSelected}) = _$AnswerChoiceModelImpl;
  const _AnswerChoiceModel._() : super._();

  factory _AnswerChoiceModel.fromJson(Map<String, dynamic> json) =
      _$AnswerChoiceModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get choiceLabel;
  @override
  String? get answerText;
  @override
  String? get answerImageUrl;
  @override
  bool get isSelected;

  /// Create a copy of AnswerChoiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerChoiceModelImplCopyWith<_$AnswerChoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
