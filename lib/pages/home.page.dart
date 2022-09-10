// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
    double peso = 0.0;
    int edad = 0;
    double slider = 0;
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
                        Text("Hombre")
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
                        Text("Mujer")
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
                    Text("Estatura"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${slider.toInt()}"),
                        Text("cm"),
                      ],
                    ),
                    Slider(
                      value: slider,
                      max: 300,
                     onChanged: (double value){
                      setState(() {
                        slider=value;
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
                                peso -= 1;
                              });
                            }, icon: Icon(Icons.remove_circle)),
                            IconButton(iconSize: 50,onPressed: (){
                              setState(() {
                                peso += 1;
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
                            IconButton(iconSize: 50,onPressed: (){}, icon: Icon(Icons.remove_circle)),
                            IconButton(iconSize: 50,onPressed: (){}, icon: Icon(Icons.add_circle)),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetallePage(),));
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