// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dispositivos extends StatefulWidget {
  const Dispositivos({Key? key, String? title}) : super(key: key);

  @override
  State<Dispositivos> createState() => _DispositivosState();
}

class _DispositivosState extends State<Dispositivos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),
      body: ListView(
        children: [

          // Título
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
            child: const Text('Dispositivos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          
          /*  =================================
              || Cadastrar novo dispositivo  ||
              =================================
          */
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cadastrar novo dispositivo:", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // -------------------------------------------
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text("Nome:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Nome fantasia criado pelo Agricultor",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),

                            // -------------------------------------------
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text("Código:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Ex. UE-209",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),

                            // -------------------------------------------
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text("Setor:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            ),

                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Ex. Milho-A3",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),

                            // -------------------------------------------
                            // Botão adicionar

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.green)
                                        )
                                      ),
                                    ),
                                    onPressed: (){}, 
                                    child: Text("+", style: TextStyle(fontSize: 35),),
                                  ),
                                )
                              ],
                            ),

                        ]),
                      ),
                    ],),
                  ),
                ],
              ),
            )
          ),


          /*  =================================
              ||   Dispositivos Cadastrados   ||
              =================================
          */

          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dispositivos Cadastrados:", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            /* /////////////////////
                               //  Dispositivo 1  //
                               /////////////////////
                            */

                            Divider(color: Colors.black,),

                            Row(children: [
                              Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
                                child: Image.asset("images/dispPlaceholder.png"),
                              ),
                              
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), child: Container(
                                color: Colors.grey,
                                width: 2,
                                height: 150,
                                ), 
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nome: Milho1\n\nCodigo: MD209\n\nSetor: Milho-A1"),
                                  Text("\n\nStatus: "), Text("Ativado", style: TextStyle(color: Colors.green),),
                                ],
                              )
                            ],),

                            /* /////////////////////
                               //  Dispositivo 2  //
                               /////////////////////
                            */

                            Divider(color: Colors.black,),

                            Row(children: [
                              Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
                                child: Image.asset("images/dispPlaceholder.png"),
                              ),
                              
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), child: Container(
                                color: Colors.grey,
                                width: 2,
                                height: 150,
                                ), 
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nome: Milho2\n\nCodigo: MD309\n\nSetor: Milho-A2"),
                                  Text("\n\nStatus: "), Text("Desativado", style: TextStyle(color: Colors.red),),
                                ],
                              )
                            ],),

                            /* /////////////////////
                               //  Dispositivo 3  //
                               /////////////////////
                            */

                            Divider(color: Colors.black,),

                            Row(children: [
                              Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
                                child: Image.asset("images/dispPlaceholder.png"),
                              ),
                              
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), child: Container(
                                color: Colors.grey,
                                width: 2,
                                height: 150,
                                ), 
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nome: Alface1\n\nCodigo: MD839\n\nSetor: Alface-A1"),
                                  Text("\n\nStatus: "), Text("Ativado", style: TextStyle(color: Colors.green),),
                                ],
                              )
                            ],)

                          ],),
                      )
                    ],),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}