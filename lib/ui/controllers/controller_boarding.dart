import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/num_extensions.dart';

import 'controller_base.dart';

class ControllerBoarding extends BaseController {
  @override
  void onInit() async {
    super.onInit();
    init();
  }

  Future<void> init() async {
    setBusy(true);
    await 4.delay();
    setBusy(false);
  }

  //states
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final RxInt _currentIndex = 0.obs;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int get currentIndex => _currentIndex.value;
  setCurrenIndex(int index) {
    _currentIndex.value = index;
  }
}