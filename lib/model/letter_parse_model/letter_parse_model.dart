import 'package:json_annotation/json_annotation.dart';

part 'letter_parse_model.g.dart';

@JsonSerializable()
class LetterParseModelGet {
  @JsonKey(name: 'output')
  String? output;

  LetterParseModelGet({this.output});

  factory LetterParseModelGet.fromJson(Map<String, dynamic> json) {
    return _$LetterParseModelGetFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LetterParseModelGetToJson(this);
}
