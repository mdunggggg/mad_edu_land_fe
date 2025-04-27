// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumOverviewModel _$ForumOverviewModelFromJson(Map<String, dynamic> json) {
  return _ForumOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$ForumOverviewModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  int? get totalComments => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;

  /// Serializes this ForumOverviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForumOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumOverviewModelCopyWith<ForumOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumOverviewModelCopyWith<$Res> {
  factory $ForumOverviewModelCopyWith(
          ForumOverviewModel value, $Res Function(ForumOverviewModel) then) =
      _$ForumOverviewModelCopyWithImpl<$Res, ForumOverviewModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      String? title,
      String? content,
      String? author,
      int? totalComments,
      int? totalLikes,
      DateTime? createdAt,
      bool liked});
}

/// @nodoc
class _$ForumOverviewModelCopyWithImpl<$Res, $Val extends ForumOverviewModel>
    implements $ForumOverviewModelCopyWith<$Res> {
  _$ForumOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? totalComments = freezed,
    Object? totalLikes = freezed,
    Object? createdAt = freezed,
    Object? liked = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForumOverviewModelImplCopyWith<$Res>
    implements $ForumOverviewModelCopyWith<$Res> {
  factory _$$ForumOverviewModelImplCopyWith(_$ForumOverviewModelImpl value,
          $Res Function(_$ForumOverviewModelImpl) then) =
      __$$ForumOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      String? title,
      String? content,
      String? author,
      int? totalComments,
      int? totalLikes,
      DateTime? createdAt,
      bool liked});
}

/// @nodoc
class __$$ForumOverviewModelImplCopyWithImpl<$Res>
    extends _$ForumOverviewModelCopyWithImpl<$Res, _$ForumOverviewModelImpl>
    implements _$$ForumOverviewModelImplCopyWith<$Res> {
  __$$ForumOverviewModelImplCopyWithImpl(_$ForumOverviewModelImpl _value,
      $Res Function(_$ForumOverviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? totalComments = freezed,
    Object? totalLikes = freezed,
    Object? createdAt = freezed,
    Object? liked = null,
  }) {
    return _then(_$ForumOverviewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForumOverviewModelImpl extends _ForumOverviewModel {
  const _$ForumOverviewModelImpl(
      {this.id,
      this.userId,
      this.title,
      this.content,
      this.author,
      this.totalComments,
      this.totalLikes,
      this.createdAt,
      this.liked = false})
      : super._();

  factory _$ForumOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumOverviewModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? author;
  @override
  final int? totalComments;
  @override
  final int? totalLikes;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final bool liked;

  @override
  String toString() {
    return 'ForumOverviewModel(id: $id, userId: $userId, title: $title, content: $content, author: $author, totalComments: $totalComments, totalLikes: $totalLikes, createdAt: $createdAt, liked: $liked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForumOverviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, content,
      author, totalComments, totalLikes, createdAt, liked);

  /// Create a copy of ForumOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumOverviewModelImplCopyWith<_$ForumOverviewModelImpl> get copyWith =>
      __$$ForumOverviewModelImplCopyWithImpl<_$ForumOverviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumOverviewModelImplToJson(
      this,
    );
  }
}

abstract class _ForumOverviewModel extends ForumOverviewModel {
  const factory _ForumOverviewModel(
      {final int? id,
      final int? userId,
      final String? title,
      final String? content,
      final String? author,
      final int? totalComments,
      final int? totalLikes,
      final DateTime? createdAt,
      final bool liked}) = _$ForumOverviewModelImpl;
  const _ForumOverviewModel._() : super._();

  factory _ForumOverviewModel.fromJson(Map<String, dynamic> json) =
      _$ForumOverviewModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get author;
  @override
  int? get totalComments;
  @override
  int? get totalLikes;
  @override
  DateTime? get createdAt;
  @override
  bool get liked;

  /// Create a copy of ForumOverviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumOverviewModelImplCopyWith<_$ForumOverviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
