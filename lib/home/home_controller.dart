import 'package:conversor_de_moedas/data/provider/hg_provider.dart';
import 'package:get/get.dart';
class HomeController extends GetxController {

  final provider = Get.put<HgProvider>(HgProvider());

  String valordolar ='';
  String valoreuros = '';
  String valorreais = '';


  void convertereais(String valor) {
    double _valorreais = double.parse(valor);
    valoreuros = (_valorreais / provider.euro).toStringAsFixed(2);
    valordolar = (_valorreais / provider.dollar).toStringAsFixed(2);
    update();
  }

  void convertedollar(String valor) {
    double _valordollar = double.parse(valor);
    valorreais = (_valordollar * provider.dollar).toStringAsFixed(2);
    valoreuros = (_valordollar * provider.dollar / provider.euro).toStringAsFixed(2);
    update();
  }

  void converteeuro(String valor) {
    double _valoreuro = double.parse(valor);
    valorreais = (_valoreuro * provider.euro).toStringAsFixed(2);
    valordolar = (_valoreuro * provider.euro / provider.dollar).toStringAsFixed(2);
    update();
  }
  
}