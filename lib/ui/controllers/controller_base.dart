import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class BaseController extends GetxController {
  final RxBool _busy = true.obs;
  get busy => _busy.value;

  void setBusy(bool val) {
    _busy.value = val;
  }
}