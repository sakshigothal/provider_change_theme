import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var mode = false.obs;

  updateTheme(ThemeData themeData) {
    Get.changeTheme(themeData);
    mode.value = !mode.value;
    update();
  }
}
