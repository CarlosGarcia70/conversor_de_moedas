import 'package:flutter/material.dart';

Widget Campo(String label, String prefixo, TextEditingController controller, Function f) {
  return TextField(
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.amber),
      border: OutlineInputBorder(),
      prefixText: prefixo,
      prefixStyle: TextStyle(color: Colors.amber),
    ),
    style: TextStyle(
        color: Colors.amber,
        fontSize: 25.0
    ),
    controller: controller,
    keyboardType: TextInputType.number,
    onChanged: f
  );
}