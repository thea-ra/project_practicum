import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class ModelData with _$ModelData {
  factory ModelData(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "Icon") String? Icon}) = _ModelData;

  factory ModelData.fromJson(Map<String, dynamic> json) =>
      _$ModelDataFromJson(json);
} 
