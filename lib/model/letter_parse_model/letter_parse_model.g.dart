// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'letter_parse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LetterParseModelGet _$LetterParseModelGetFromJson(Map<String, dynamic> json) =>
    LetterParseModelGet(
      output:
          (json['output'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LetterParseModelGetToJson(
        LetterParseModelGet instance) =>
    <String, dynamic>{
      'output': instance.output,
    };
