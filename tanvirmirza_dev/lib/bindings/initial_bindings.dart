import 'package:get/get.dart';
import 'package:tanvirmirza_dev/moduls/theme_switch/theme_contoller.dart';
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Global dependencies registered here
    Get.put(ThemeController());
    // Get.put(ProjectController());
    // Get.put(ContactController());
  }
}
