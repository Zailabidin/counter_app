import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;
  @override
  void onInit() {
    Get.changeTheme(ThemeData(primarySwatch: Colors.red));
    super.onInit();
  }

  RxInt buildCount = 0.obs;
  void koshuu() {
    san.value = san.value + 1;
  }

  void kemituu() {
    san.value = san.value - 1;
  }
  //  int san2 = 0;
  // void basuu() {

  //     san2++;

  // }
}
