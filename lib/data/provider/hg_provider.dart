import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HgProvider extends GetxService {

  final request = 'https://api.hgbrasil.com/finance?format=json&key=a6644d0c';
  Map mapa = Map();

  Future<Map> getData() async {
    http.Response response = await http.get(request);
    return jsonDecode(response.body);
  }
}