import 'package:json_annotation/json_annotation.dart';

part 'urldetails.g.dart';

@JsonSerializable()
class Urldetails {
  @JsonKey(name: 'tableout')
  List<dynamic>? tableout;

  Urldetails({this.tableout});
  Urldetails.create({required this.tableout});

  factory Urldetails.fromJson(Map<String, dynamic> json) {
    var tableoutputList = (json['tableout'] as String?)?.split(',') ?? [];
    return Urldetails(
      tableout: tableoutputList,
    );
  }

  Map<String, dynamic> toJson() {
    var tableoutput = tableout?.join(',') ?? '';
    return {'tableout': tableoutput};
  }
}
