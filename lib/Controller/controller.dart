import 'package:get/get.dart';

class Controller extends GetxController {
  bool loading = false;

  void loddder(bool value) {
    loading = value;
    update();
  }
}
