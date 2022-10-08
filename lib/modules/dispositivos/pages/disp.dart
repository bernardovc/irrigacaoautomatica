// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalhotcc/modules/dispositivos/controllers/disp_controller.dart';
import 'package:trabalhotcc/modules/dispositivos/models/dispositivo_model.dart';
import 'package:trabalhotcc/shared/components/botaoIcon.dart';
import 'package:trabalhotcc/shared/components/campoForm.dart';
import 'package:trabalhotcc/shared/components/exibirDisp.dart';

class Dispositivos extends StatefulWidget {
  const Dispositivos({Key? key, String? title}) : super(key: key);

  @override
  State<Dispositivos> createState() => _DispositivosState();
}

class _DispositivosState extends State<Dispositivos> {

  final _controller = DispositivosController();

  Dispositivo disp1 = Dispositivo(nome: 'Milho1', cod: 'MD209', setor: 'Milho-A1', status: true, img: 4);
  Dispositivo disp2 = Dispositivo(nome: 'Milho2', cod: 'MD309', setor: 'Milho-A2', status: false, img: 4);
  Dispositivo disp3 = Dispositivo(nome: 'Alface1', cod: 'MD839', setor: 'Alface-A1', status: true, img: 4);
  Dispositivo disp4 = Dispositivo(nome: 'Alface2', cod: 'MD939', setor: 'Alface-A2', status: true, img: 4);

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
                            
                            CampoForm(legenda: 'Nome:', controller: _controller.nome, dica: 'Nome fantasia criado pelo Agricultor'),

                            // -------------------------------------------

                            CampoForm(legenda: 'Código:', controller: _controller.codigo, dica: 'Ex. UE-209'),

                            // -------------------------------------------

                            CampoForm(legenda: 'Setor:', controller: _controller.setor, dica: 'Ex. Milho-A3'),
                            
                            // Botão adicionar

                            // BotaoIcon(icon: Icon(Icons.access_alarms_outlined), tamanho: 20, funcao: (){}),
                            
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

                            Divider(color: Colors.black,),
                            
                            ExibirDisp(disp: disp1),

                            Divider(color: Colors.black,),

                            ExibirDisp(disp: disp2),

                            Divider(color: Colors.black,),

                            ExibirDisp(disp: disp3),

                            Divider(color: Colors.black,),

                            ExibirDisp(disp: disp4),

                            Divider(color: Colors.black,),

                            

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