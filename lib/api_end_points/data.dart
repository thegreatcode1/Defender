import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phish_defender/api_end_points/uri.dart';
import 'package:phish_defender/model/letter_parse_model/letter_parse_model.dart';
//import 'package:phish_defender/presentation/Home/Widgets/homescreenwidget.dart';

abstract class ApiCalls {
  Future<List<String>> getletterascii(String input);
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

  ValueNotifier<List<String>> letternotifier = ValueNotifier([]);

  @override
  Future<List<String>> getletterascii(String input) async {
    try {
      final completepath = url.baseurl+'${input}';
      final response = await dio.get<String>(completepath);
      log(response.data.toString());
      if (response.data != null && response.data is String) {
        final getrespo =
            LetterParseModelGet.fromJson(jsonDecode(response.data.toString()));
        log(getrespo.output.toString());
        // Check if getrespo.output is not null before calling toList()
        if (getrespo.output != null) {
          letternotifier.value.clear();
          letternotifier.value.addAll(getrespo.output!);
          letternotifier.notifyListeners();
        }
        return getrespo.output ?? [];
      }
    } catch (e) {
      print(e);
    }

    return [];
  }
}
