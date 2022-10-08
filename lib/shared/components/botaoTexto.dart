import 'package:flutter/material.dart';

class BotaoTexto extends StatefulWidget{
  final String texto;
  final VoidCallback funcao;
  final Color? corBotao;
  final Color? corTexto;
  final Size tamanhoBotao;
  final double? tamanhoTexto;

  const BotaoTexto({
    Key? key, 
    required this.texto, 
    required this.funcao, 
    this.corBotao,
    this.corTexto,
    required this.tamanhoBotao,
    this.tamanhoTexto,
  }) : super(key: key);


  @override
  State<BotaoTexto> createState() => _BotaoTextoState();
}

class _BotaoTextoState extends State<BotaoTexto>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        child: Text(
          widget.texto, 
          style: TextStyle(
            color: widget.corTexto ?? Colors.white,
            fontSize: widget.tamanhoTexto ?? 18,
          ),

        ),
        style: ElevatedButton.styleFrom(
          primary: widget.corBotao ?? Colors.white,
          minimumSize: widget.tamanhoBotao,
        ),
        onPressed: widget.funcao,
      ),
    );
  }

}