import 'package:conversor_de_moedas/data/provider/hg_provider.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HgProvider>(() => HgProvider());
  }

}