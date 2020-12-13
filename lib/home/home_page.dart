import 'package:conversor_de_moedas/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_widgets.dart';

class HomePage extends StatelessWidget {

  final controller = Get.put(HomeController());
  TextEditingController reais = TextEditingController();
  TextEditingController dolares = TextEditingController();
  TextEditingController euros = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Conversor de Moedas',),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
            Campo('Reais', 'R\$', reais, _onChangeReal),
            Divider(color: Colors.white),
            Campo('Dólares', 'US\$', dolares, _onChangeDollar),
            Divider(color: Colors.white),
            Campo('Euros','€\$', euros, _onChangeEuros),
            Divider(color: Colors.white)
          ],
        )
      )
    );
  }

  void _onChangeReal(String valor){
    controller.convertereais(valor);
    dolares.text = controller.valordolar;
    euros.text = controller.valoreuros;
  }

  void _onChangeDollar(String valor){
    controller.convertedollar(valor);
    reais.text = controller.valorreais;
    euros.text = controller.valoreuros;
  }

  void _onChangeEuros(String valor){
    controller.converteeuro(valor);
    reais.text = controller.valorreais;
    dolares.text = controller.valordolar;
  }

  void _resetFields() {
    reais.text = '';
    dolares.text = '';
    euros.text = '';
  }
}
