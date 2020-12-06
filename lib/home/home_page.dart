import 'package:conversor_de_moedas/data/provider/hg_provider.dart';
import 'package:conversor_de_moedas/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final controller = Get.put(HomeController());

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
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<Map>(
          future: controller.getdados(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                    child: CircularProgressIndicator()
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                      child: Text('Houve algum erro com a obtenção dos dados!')
                  );
                } else {
                  return Container();
                }
            }
          }
        ),
      )
    );
  }
}
