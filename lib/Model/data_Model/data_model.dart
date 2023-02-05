import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class ModelData with _$ModelData {
  factory ModelData(
      {@JsonKey(name: "id") num? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") num? amount,
      }) = _ModelData;

  factory ModelData.fromJson(Map<String, dynamic> json) =>
      _$ModelDataFromJson(json);
} 
