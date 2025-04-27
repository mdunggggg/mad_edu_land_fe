// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  int? get authorId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  List<LikeModel> get likes => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? content,
      String? author,
      int? authorId,
      DateTime? createdAt,
      List<CommentModel> comments,
      List<LikeModel> likes});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? authorId = freezed,
    Object? createdAt = freezed,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<LikeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? content,
      String? author,
      int? authorId,
      DateTime? createdAt,
      List<CommentModel> comments,
      List<LikeModel> likes});
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? authorId = freezed,
    Object? createdAt = freezed,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_$PostModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<LikeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl extends _PostModel {
  const _$PostModelImpl(
      {this.id,
      this.title,
      this.content,
      this.author,
      this.authorId,
      this.createdAt,
      final List<CommentModel> comments = const [],
      final List<LikeModel> likes = const []})
      : _comments = comments,
        _likes = likes,
        super._();

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? author;
  @override
  final int? authorId;
  @override
  final DateTime? createdAt;
  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<LikeModel> _likes;
  @override
  @JsonKey()
  List<LikeModel> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, content: $content, author: $author, authorId: $authorId, createdAt: $createdAt, comments: $comments, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      author,
      authorId,
      createdAt,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes));

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel extends PostModel {
  const factory _PostModel(
      {final int? id,
      final String? title,
      final String? content,
      final String? author,
      final int? authorId,
      final DateTime? createdAt,
      final List<CommentModel> comments,
      final List<LikeModel> likes}) = _$PostModelImpl;
  const _PostModel._() : super._();

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get author;
  @override
  int? get authorId;
  @override
  DateTime? get createdAt;
  @override
  List<CommentModel> get comments;
  @override
  List<LikeModel> get likes;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
