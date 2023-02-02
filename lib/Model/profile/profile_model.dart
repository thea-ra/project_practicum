import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    String? icome,
    String? expense,
    String? loan,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

 ProfileModel profile = ProfileModel(icome: '0',expense: '0', loan: '0');
