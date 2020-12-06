import 'package:conversor_de_moedas/data/provider/hg_provider.dart';
import 'package:get/get.dart';
class HomeController extends GetxController {

  final provider = Get.put<HgProvider>(HgProvider());

  Future<Map> getdados() async {
    return provider.getData();
}


}