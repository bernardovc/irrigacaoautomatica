import 'package:flutter/material.dart';

class CampoForm extends StatefulWidget {
  final String legenda;
  String? dica;
  Color? corForm;
  Color? corLegenda;
  TextInputType? teclado;
  final TextEditingController controller;
  Icon? icon;
  bool? senha;

  CampoForm(
      {Key? key,
      required this.legenda,
      this.dica,
      this.corForm,
      this.corLegenda,
      this.teclado,
      required this.controller,
      this.icon,
      this.senha})
      : super(key: key);

  @override
  State<CampoForm> createState() => _TextFomFieldState();
}

class _TextFomFieldState extends State<CampoForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text(widget.legenda,
              style: TextStyle(
                fontWeight: FontWeight.bold, color: widget.corLegenda)),
          ),
          TextFormField(
            obscureText: widget.senha ?? false,
            keyboardType: widget.teclado ?? TextInputType.text,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.dica ?? '',
              prefixIcon: widget.icon,
              fillColor: widget.corForm ?? Colors.white,
              filled: true,
              border: OutlineInputBorder(),)
          ),
        ],
      ),
    );
  }
}
