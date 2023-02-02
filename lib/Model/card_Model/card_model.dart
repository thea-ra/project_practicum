import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  factory CardModel({
    String? image,
    String? username,
    String? career,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}

CardModel cardModel = CardModel(
    image: 'asset/image/animated.jfif', username: 'Hira Riaz', career: 'Ux/Ui');
