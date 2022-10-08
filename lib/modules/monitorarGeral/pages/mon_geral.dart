// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trabalhotcc/modules/dispositivos/pages/disp.dart';
import 'package:trabalhotcc/shared/components/botaoTexto.dart';

class MonitorGeral extends StatefulWidget {
  const MonitorGeral({Key? key, String? title}) : super(key: key);

  @override
  State<MonitorGeral> createState() => _MonitorGeralState();
}

class _MonitorGeralState extends State<MonitorGeral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),
      body: ListView(
        children: [
          //Título
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
            child: const Text('Monitoramento Geral', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),

          /* ===================== 
             || Caixa da Umidade ||
             ======================
          */

          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), 
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text('Umidade', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, )),
                  Row(children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
                      child: Image.asset("images/umidPlaceholder.png")
                    ),
                    Text('Nível de Umidade: Moderado\n\nEstado da Irrigador: Desligado\n\nÚltima vez ligado: 6:00 AM - 17/07/2022'),
                  ],),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: BotaoTexto(
                          texto: 'Detalhar', 
                          funcao: () {}, 
                          tamanhoBotao: Size (100,50),
                          corBotao: Colors.teal,                        
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          /* 
             ==================== 
             ||   Caixa do pH   ||
             ====================
          */

          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), 
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text('Acidez do Solo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,)),
                  Row(children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
                      child: Image.asset("images/pHPlaceholder.png"),
                    ),
                    Text('Nível de pH: 7.1\n\nEstado da Acidez: Moderada\n\nÚltima vez alterado: 6:00 AM - 17/07/2022'),
                  ],),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: BotaoTexto(
                          texto: 'Detalhar', 
                          funcao: () {}, 
                          tamanhoBotao: Size (100,50),
                          corBotao: Colors.teal,                        
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0), 
            child: BotaoTexto(
              texto: 'Dispositivos', 
              funcao: (){
                final rota = MaterialPageRoute(builder: (context) => const Dispositivos());
                Navigator.of(context).push(rota);
              }, 
              tamanhoBotao: Size(200, 50),
              corBotao: Colors.teal,
            ),
          ),
        ],
      )
    );
  }
}