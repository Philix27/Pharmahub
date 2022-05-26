// import 'package:pharmahub/controller/user_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:pharmahub/controller/auth_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    //? Core
    // Get.put<UserController>(UserController(), permanent: true);
    Get.put<AuthController>(AuthController(), permanent: true);
  }
}


