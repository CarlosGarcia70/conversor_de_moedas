import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HgProvider extends GetxService {

  final request = 'https://api.hgbrasil.com/finance?format=json&key=a6644d0c';
  Map _mapa = Map();
  double dollar;
  double euro;

  @override
  void onInit() async {
    super.onInit();
    http.Response _response;
    _response = await http.get(request);
    _mapa = jsonDecode(_response.body);
    dollar = _mapa['results']['currencies']['USD']['buy'];
    print(dollar.toStringAsFixed(2));
    euro = _mapa['results']['currencies']['EUR']['buy'];
    print(euro.toStringAsFixed(2));
  }

}