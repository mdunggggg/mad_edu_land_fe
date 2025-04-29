// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_set_in_student_class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionSetInStudentClassModel _$QuestionSetInStudentClassModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionSetInStudentClassModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionSetInStudentClassModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;

  /// Serializes this QuestionSetInStudentClassModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionSetInStudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionSetInStudentClassModelCopyWith<QuestionSetInStudentClassModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionSetInStudentClassModelCopyWith<$Res> {
  factory $QuestionSetInStudentClassModelCopyWith(
          QuestionSetInStudentClassModel value,
          $Res Function(QuestionSetInStudentClassModel) then) =
      _$QuestionSetInStudentClassModelCopyWithImpl<$Res,
          QuestionSetInStudentClassModel>;
  @useResult
  $Res call({int? id, String? name, String? description, bool? done});
}

/// @nodoc
class _$QuestionSetInStudentClassModelCopyWithImpl<$Res,
        $Val extends QuestionSetInStudentClassModel>
    implements $QuestionSetInStudentClassModelCopyWith<$Res> {
  _$QuestionSetInStudentClassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionSetInStudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? done = freezed,
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
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionSetInStudentClassModelImplCopyWith<$Res>
    implements $QuestionSetInStudentClassModelCopyWith<$Res> {
  factory _$$QuestionSetInStudentClassModelImplCopyWith(
          _$QuestionSetInStudentClassModelImpl value,
          $Res Function(_$QuestionSetInStudentClassModelImpl) then) =
      __$$QuestionSetInStudentClassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? description, bool? done});
}

/// @nodoc
class __$$QuestionSetInStudentClassModelImplCopyWithImpl<$Res>
    extends _$QuestionSetInStudentClassModelCopyWithImpl<$Res,
        _$QuestionSetInStudentClassModelImpl>
    implements _$$QuestionSetInStudentClassModelImplCopyWith<$Res> {
  __$$QuestionSetInStudentClassModelImplCopyWithImpl(
      _$QuestionSetInStudentClassModelImpl _value,
      $Res Function(_$QuestionSetInStudentClassModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionSetInStudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? done = freezed,
  }) {
    return _then(_$QuestionSetInStudentClassModelImpl(
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
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionSetInStudentClassModelImpl
    extends _QuestionSetInStudentClassModel {
  const _$QuestionSetInStudentClassModelImpl(
      {this.id, this.name, this.description, this.done})
      : super._();

  factory _$QuestionSetInStudentClassModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionSetInStudentClassModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? done;

  @override
  String toString() {
    return 'QuestionSetInStudentClassModel(id: $id, name: $name, description: $description, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionSetInStudentClassModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, done);

  /// Create a copy of QuestionSetInStudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionSetInStudentClassModelImplCopyWith<
          _$QuestionSetInStudentClassModelImpl>
      get copyWith => __$$QuestionSetInStudentClassModelImplCopyWithImpl<
          _$QuestionSetInStudentClassModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionSetInStudentClassModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionSetInStudentClassModel
    extends QuestionSetInStudentClassModel {
  const factory _QuestionSetInStudentClassModel(
      {final int? id,
      final String? name,
      final String? description,
      final bool? done}) = _$QuestionSetInStudentClassModelImpl;
  const _QuestionSetInStudentClassModel._() : super._();

  factory _QuestionSetInStudentClassModel.fromJson(Map<String, dynamic> json) =
      _$QuestionSetInStudentClassModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get done;

  /// Create a copy of QuestionSetInStudentClassModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionSetInStudentClassModelImplCopyWith<
          _$QuestionSetInStudentClassModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
