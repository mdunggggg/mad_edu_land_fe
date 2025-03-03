import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.g.dart';
part 'base_model.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BaseModel<T> with _$BaseModel {
  const factory BaseModel({
    required int code,
    required String message,
    T? data,
  }) = _BaseModel<T>;

  factory BaseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseModelFromJson<T>(json, fromJsonT);
}
