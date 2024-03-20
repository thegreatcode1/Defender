import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phish_defender/api_end_points/uri.dart';
import 'package:phish_defender/model/letter_parse_model/letter_parse_model.dart';
//import 'package:phish_defender/presentation/Home/Widgets/homescreenwidget.dart';

abstract class ApiCalls {
  Future<void> getletterascii();
}

class Datadb extends ApiCalls {
  final dio = Dio();
  final url = Url();

// singleton ctration start
  Datadb._internal();
  static Datadb instance = Datadb._internal();
  Datadb factory() {
    return instance;
  }
// singleton end

  ValueNotifier<List<LetterParseModelGet>> letternotifier = ValueNotifier([]);

  @override
  Future<void> getletterascii() async {
    try {
      final completepath = url.baseurl;
      Response response = await dio.get(completepath);
      if (response.data != null) {
        if (response.data is String) {
          print(response);
          final getresult =
              LetterParseModelGet.fromJson(jsonDecode(response.data));
          letternotifier.value.clear();
          letternotifier.value.add(getresult);
          letternotifier.notifyListeners();
        }
      } else if (response is Map<String, dynamic>) {
        final getresult =
            LetterParseModelGet.fromJson(jsonDecode(response.data));
        letternotifier.value.clear();
        letternotifier.value.add(getresult);
        letternotifier.notifyListeners();
      }
    } catch (e) {
      print(e);
    }
    letternotifier.value.clear();
  }
}
