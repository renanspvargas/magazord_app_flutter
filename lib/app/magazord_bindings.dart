import 'package:get/get.dart';
import 'package:magazord_app_flutter/app/core/rest_client/rest_client.dart';

class MagazordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient(), permanent: true);
  }
}
