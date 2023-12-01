import 'package:phish_defender/presentation/Home/home.dart';
import 'package:phish_defender/presentation/Result_screen/result.dart';

final routers = {
  ResultScreen.routename: (ctx) => const ResultScreen(),
  HomeScreen.routename: (ctx) => const HomeScreen(),
};
