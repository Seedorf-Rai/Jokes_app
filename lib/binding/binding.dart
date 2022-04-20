import 'package:get/get.dart';
import 'package:jokes_app/controller/joke_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(JokeController);
  }
}
