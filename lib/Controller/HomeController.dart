import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pam_lab4/Module/featured.dart';
import 'package:pam_lab4/Module/news.dart';

class HomeController extends GetxController {  //controls UI state when include an individual widget(feature, news) // state management - change the state of application
  RxList<Featured> featured = RxList();        // transforms from array => list of objects
  RxList<News> news = RxList();

  Future<void> readJsonFile() async { //to load dates in background, when the widget we need is called
    final String jsonString = await rootBundle.loadString('assets/news.json');
    final data = await json.decode(jsonString);

    featured.value = (data ['featured'] as List).map((value) => Featured.fromJson(value)).toList();
    news.value = (data ['news'] as List).map((value) => News.fromJson(value)).toList(); //save data
  }
}