import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RefreshController extends GetxController {
  var colors = <Color>[].obs;

  @override
  void onInit() {
    super.onInit();
    generateColors();
  }

  void generateColors() {
    colors.value = List<Color>.generate(
      6, // Number of ListTiles
      (index) =>
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
    );
  }

  Future<void> refreshColors() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    colors.shuffle();
  }
}
