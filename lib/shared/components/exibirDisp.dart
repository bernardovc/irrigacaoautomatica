import 'package:flutter/material.dart';
import 'package:trabalhotcc/modules/dispositivos/models/dispositivo_model.dart';

class ExibirDisp extends StatefulWidget{
  final Dispositivo disp;

  const ExibirDisp({Key? key, required this.disp}) : super(key: key);
  
  @override
  State<ExibirDisp> createState() => _ExibirDispState();
}

class _ExibirDispState extends State<ExibirDisp>{

  @override
  Widget build(BuildContext context) {
    String img;
    switch(widget.disp.img) {
      case 1: {img = 'images/dispPlaceholder1.png';}
      break;
      case 2: {img = 'images/dispPlaceholder2.png';}
      break;
      case 3: {img = 'images/dispPlaceholder3.png';}
      break;
      default: {img = 'images/dispPlaceholder.png';}
    }

    return Row(children: [
      Padding(padding: EdgeInsets.fromLTRB(10, 10, 20, 10), 
        child: Image.asset(img),
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
          Text("Nome: " + widget.disp.nome + "\n\nCodigo: " + widget.disp.cod + "\n\nSetor: " + widget.disp.setor),
          Text("\n\nStatus: "), widget.disp.status ? Text("Ativado", style: TextStyle(color: Colors.green),) : Text("Desativado", style: TextStyle(color: Colors.red),),
        ],
      )
    ],);
  }
}