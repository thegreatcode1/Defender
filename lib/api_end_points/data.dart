import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phish_defender/api_end_points/uri.dart';
import 'package:phish_defender/model/letter_parse_model/letter_parse_model.dart';
//import 'package:phish_defender/presentation/Home/Widgets/homescreenwidget.dart';

abstract class ApiCalls {
  Future<List<LetterParseModelGet>> getletterascii();
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
  Future<List<LetterParseModelGet>> getletterascii() async {
    try {
      final completepath = url.baseurl;
      Response response = await dio.get<LetterParseModelGet>(completepath);
      //log(response.toString());

      //print(response);
      if (response.data != null && response.data is String) {
        log(response.toString());

        final getresult = LetterParseModelGet.fromJson(
            jsonDecode(response.data) as Map<String, dynamic>);
        //     print(getresult);
        log(getresult.toString());
        log("hello");

        letternotifier.value.clear();
        letternotifier.value.add(getresult);
        letternotifier.notifyListeners();

        // else{
        //   log("no text");
        // }
      } else if (response.data is Map<String, dynamic>) {
        log(response.data.toString());
        log("hello");
        final getresult = jsonDecode(response.data);
        log(getresult.toString());

        var getresult1 =
            LetterParseModelGet.fromJson(getresult as Map<String, dynamic>);

        log("hello");
        letternotifier.value.clear();
        letternotifier.value.add(getresult1);
        letternotifier.notifyListeners();
        
      }
    } catch (e) {
      print(e);
    }
    letternotifier.value.clear();

    
  }
}
