import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatUsController extends GetxController {
  late TextEditingController promptC;
  String responseTxt = '';


  @override
  void onInit() {
    promptC = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    promptC.dispose();
    super.onClose();
  }
}
