import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      () => ThemeController(),
    );
  }
}
