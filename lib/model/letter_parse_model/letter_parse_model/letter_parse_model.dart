import 'package:json_annotation/json_annotation.dart';

part 'letter_parse_model.g.dart';

@JsonSerializable()
class LetterParseModel {
  String? output;

  LetterParseModel({this.output});

  factory LetterParseModel.fromJson(Map<String, dynamic> json) {
    return _$LetterParseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LetterParseModelToJson(this);
}
