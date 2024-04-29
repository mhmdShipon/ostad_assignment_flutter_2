import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:photo_gallery/models/dummy_data.dart';
import '../module/dummy_data.dart';
import 'custom_color.dart';

class Utils {
  static TextStyle buildTitleTextStyle() {
    return TextStyle(
      color: Color(CustomColor.lightGrey.value),
      fontWeight: FontWeight.bold,
    );
  }
  static int getRandomIndex() {
    Random random = Random();
    return random.nextInt(DummyData.getImages().length - 5) + 1;
  }
}

