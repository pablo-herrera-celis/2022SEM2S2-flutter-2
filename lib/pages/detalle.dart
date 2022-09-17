// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  DetallePage(
      {super.key,
      required this.IMC,
      required this.estado,
      required this.color,
      required this.motivacionMensaje});
  double IMC;
  String estado, motivacionMensaje;
  Color color;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        backgroundColor:Color.fromARGB(9,14,33,255) ,
      ),
      body: Column(
        children: [
          Text(
            "Resultado",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  color:Color.fromARGB(29,30,51,255),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            estado,
                            style: TextStyle(
                              color: color,
                              fontSize: 20
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              IMC.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              motivacionMensaje,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
