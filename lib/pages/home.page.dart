// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
    double peso = 50.0;
    int edad = 10;
    double estatura = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        backgroundColor: Color.fromARGB(9,14,33,255),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
            color: Color.fromARGB(9,14,33,255),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.man,size: 100,),
                        Text("Hombre",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      color:Color.fromARGB(17,19,40,255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.woman,size:100),
                        Text("Mujer",style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    decoration: BoxDecoration(
                      color:Color.fromARGB(29,30,51,255) ,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
              ],
            ),
          )),
          //Segundo Contenedor
          Expanded(
            child: Container(
            color: Color.fromARGB(9,14,33,255),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Estatura",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${estatura.toInt()}",style: TextStyle(fontSize: 30),),
                        Text("cm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        
                      ],
                    ),
                    Slider(
                      value: estatura,
                      activeColor: Colors.white,
                      thumbColor: Color.fromARGB(255, 240, 46, 98),
                      min: 50,
                      max: 250,
                     onChanged: (double value){
                      setState(() {
                        estatura=value;
                      });
                     }
                     ),
                  ],
                ),
                decoration: BoxDecoration(
                color: Color.fromARGB(29,30,51,255),
                borderRadius: BorderRadius.circular(20),  
                ),
              ),
            ),
          )),
          //Tercer Contenedor
          Expanded(
            child: Container(
            color: Color.fromARGB(9,14,33,255),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Peso",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("${peso}",style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(iconSize: 50,onPressed: (){
                              setState(() {
                                if(peso == 50){
                                  print("No puede ser menor a 50");
                                }else{
                                  peso -= 1;
                                }
                              });
                            }, icon: Icon(Icons.remove_circle)),
                            IconButton(iconSize: 50,onPressed: (){
                              setState(() {
                                if(peso == 500){
                                  print("No puede ser mayor a 500");
                                }else{
                                  peso += 1;
                                }
                              });
                            }, icon: Icon(Icons.add_circle)),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color:Color.fromARGB(29,30,51,255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )),
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edad",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("${edad}",style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(iconSize: 50,onPressed: (){
                              setState(() {
                                if(edad == 10){
                                  print("No puede ser menor a 10");
                                }else{
                                  edad -= 1;
                                }
                              });
                            }, icon: Icon(Icons.remove_circle)),
                            IconButton(iconSize: 50,onPressed: (){
                              setState(() {
                                if(edad == 120){
                                  print("No puede ser mayor a 120");
                                }else{
                                  edad += 1;
                                }
                              });
                            }, icon: Icon(Icons.add_circle)),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color:Color.fromARGB(29,30,51,255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //color: Color.fromARGB(255, 129, 126, 126),
                  ),
                )),
              ],
            ),
          )),
          //Cuarto contenedor
          GestureDetector(
            onTap: (){
              double valorIMC = peso / (estatura * estatura);
              String estado = "Peso", mensaje = "Tu puedes";
              Color colorEstado= Colors.black;
              if(valorIMC <18.5){
                estado = "Bajo Peso";
                colorEstado = Colors.orangeAccent;
                mensaje="Tienes bajo peso. \nVe a comer hamburguesa en Red Pepper";
              }
              if(valorIMC > 18.5 && valorIMC <24.9){
                estado = "Normal";
                colorEstado = Colors.greenAccent;
                mensaje = "Tu peso es normal. \nBuen trabajo!";
              }
              if(valorIMC > 25 && valorIMC <29.9){
                estado = "Sobre Peso";
                colorEstado = Colors.orange;
                mensaje = "Uy tienes sobre peso. \nMenos comida en la noche";
              }
              if(valorIMC > 30 && valorIMC <34.9){
                estado = "Obesidad I";
                colorEstado = Colors.redAccent;
                mensaje = "Cuidado ya tienes obesidad I";
              }
              if(valorIMC > 35 && valorIMC <39.9){
                estado = "Obesidad II";
                colorEstado = Colors.red;
                mensaje = "Tienes obesidad II. \nToca que vaya al gym";
              }
              if(valorIMC > 40 && valorIMC <44.9){
                estado = "Obesidad III";
                colorEstado = Color.fromARGB(71, 133, 43, 43);
                mensaje = "Tienes obesidad III. \nNecesitas cuidar mas de tu salud";
              }
              if( valorIMC > 50 ){
                estado = "Obesidad IV";
                colorEstado = Color.fromARGB(40, 43, 1, 1);
                mensaje = "Ya le toca operarse esta muy gordo";
              }

              Navigator.push(context, MaterialPageRoute(builder: (context) => DetallePage(IMC:valorIMC,estado: estado,color: colorEstado,motivacionMensaje: mensaje),));
            },
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 240, 46, 98),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Calcular",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}