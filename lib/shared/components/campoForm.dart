import 'package:flutter/material.dart';

class CampoForm extends StatefulWidget {
  final String legenda;
  final String label;
  String? dica;
  Color? corForm;
  Color? corLegenda;
  TextInputType? teclado;
  final TextEditingController controller;
  Icon? icon;
  bool? senha;
  bool? isSenha;

  CampoForm(
      {Key? key,
      required this.label,
      required this.legenda,
      this.dica,
      this.corForm,
      this.corLegenda,
      this.teclado,
      required this.controller,
      this.icon,
      this.isSenha,
      this.senha})
      : super(key: key);

  @override
  State<CampoForm> createState() => _TextFomFieldState();
}

class _TextFomFieldState extends State<CampoForm> {
  bool mostrarSenha = false;
  bool CampodeSenha() {
    return widget.isSenha ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
            child: Text(widget.legenda,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: widget.corLegenda)),
          ),
          TextFormField(
              obscureText: mostrarSenha,
              keyboardType: widget.teclado ?? TextInputType.text,
              controller: widget.controller,
              decoration: InputDecoration(
                  hintText: widget.dica ?? '',
                  label: Text(widget.label),
                  prefixIcon: Icon(Icons.people),
                  fillColor: widget.corForm ?? Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                  border: OutlineInputBorder(),
                  suffix: CampodeSenha()
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              mostrarSenha = !mostrarSenha;
                            });
                          },
                          icon: Icon(
                            mostrarSenha == true
                                ? Icons.visibility_off
                                : Icons.remove_red_eye_outlined,
                          ),
                        )
                      : null))
        ],
      ),
    );
  }
}
