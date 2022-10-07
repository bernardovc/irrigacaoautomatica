import 'package:flutter/material.dart';

class BotaoIcon extends StatefulWidget {
  final Icon icon;
  Color? corFundo;
  Color? corIcon;
  final double tamanho;
  final Function funcao;
  double? padding;

  BotaoIcon({
    Key? key, 
    required this.icon,
    this.corFundo,
    this.corIcon, 
    required this.tamanho, 
    required this.funcao,
    this.padding,
  }) : super(key: key);

  @override
  State<BotaoIcon> createState() => _BotaoIconState();
}

class _BotaoIconState extends State<BotaoIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding ?? 10),
      child: Ink(
        decoration: ShapeDecoration(
          color: widget.corFundo ?? Colors.blue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: widget.icon,
          iconSize: widget.tamanho,
          color: widget.corIcon ?? Colors.white,
          onPressed: () {widget.funcao;},
        )
      ),
    );
  }
  
}