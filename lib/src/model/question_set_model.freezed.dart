// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionSetModel _$QuestionSetModelFromJson(Map<String, dynamic> json) {
  return _QuestionSetModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionSetModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get totalQuestion => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  List<QuestionModel> get questions => throw _privateConstructorUsedError;

  /// Serializes this QuestionSetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionSetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionSetModelCopyWith<QuestionSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionSetModelCopyWith<$Res> {
  factory $QuestionSetModelCopyWith(
          QuestionSetModel value, $Res Function(QuestionSetModel) then) =
      _$QuestionSetModelCopyWithImpl<$Res, QuestionSetModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? totalQuestion,
      DateTime? createdDate,
      List<QuestionModel> questions});
}

/// @nodoc
class _$QuestionSetModelCopyWithImpl<$Res, $Val extends QuestionSetModel>
    implements $QuestionSetModelCopyWith<$Res> {
  _$QuestionSetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionSetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? totalQuestion = freezed,
    Object? createdDate = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestion: freezed == totalQuestion
          ? _value.totalQuestion
          : totalQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionSetModelImplCopyWith<$Res>
    implements $QuestionSetModelCopyWith<$Res> {
  factory _$$QuestionSetModelImplCopyWith(_$QuestionSetModelImpl value,
          $Res Function(_$QuestionSetModelImpl) then) =
      __$$QuestionSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? totalQuestion,
      DateTime? createdDate,
      List<QuestionModel> questions});
}

/// @nodoc
class __$$QuestionSetModelImplCopyWithImpl<$Res>
    extends _$QuestionSetModelCopyWithImpl<$Res, _$QuestionSetModelImpl>
    implements _$$QuestionSetModelImplCopyWith<$Res> {
  __$$QuestionSetModelImplCopyWithImpl(_$QuestionSetModelImpl _value,
      $Res Function(_$QuestionSetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionSetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? totalQuestion = freezed,
    Object? createdDate = freezed,
    Object? questions = null,
  }) {
    return _then(_$QuestionSetModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestion: freezed == totalQuestion
          ? _value.totalQuestion
          : totalQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionSetModelImpl extends _QuestionSetModel {
  const _$QuestionSetModelImpl(
      {this.id,
      this.name,
      this.description,
      this.totalQuestion,
      this.createdDate,
      final List<QuestionModel> questions = const []})
      : _questions = questions,
        super._();

  factory _$QuestionSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionSetModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? totalQuestion;
  @override
  final DateTime? createdDate;
  final List<QuestionModel> _questions;
  @override
  @JsonKey()
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionSetModel(id: $id, name: $name, description: $description, totalQuestion: $totalQuestion, createdDate: $createdDate, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionSetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.totalQuestion, totalQuestion) ||
                other.totalQuestion == totalQuestion) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      totalQuestion,
      createdDate,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuestionSetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionSetModelImplCopyWith<_$QuestionSetModelImpl> get copyWith =>
      __$$QuestionSetModelImplCopyWithImpl<_$QuestionSetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionSetModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionSetModel extends QuestionSetModel {
  const factory _QuestionSetModel(
      {final int? id,
      final String? name,
      final String? description,
      final int? totalQuestion,
      final DateTime? createdDate,
      final List<QuestionModel> questions}) = _$QuestionSetModelImpl;
  const _QuestionSetModel._() : super._();

  factory _QuestionSetModel.fromJson(Map<String, dynamic> json) =
      _$QuestionSetModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get totalQuestion;
  @override
  DateTime? get createdDate;
  @override
  List<QuestionModel> get questions;

  /// Create a copy of QuestionSetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionSetModelImplCopyWith<_$QuestionSetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
