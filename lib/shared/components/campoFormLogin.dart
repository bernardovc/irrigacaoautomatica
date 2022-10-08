import 'package:flutter/material.dart';

class CampoFormLogin extends StatefulWidget {
  final String label;
  String? dica;
  Color? corForm;
  Color? corLegenda;
  TextInputType? teclado;
  final TextEditingController controller;
  Icon? icon;
  bool? isSenha;

  CampoFormLogin(
      {Key? key,
      required this.label,
      this.dica,
      this.corForm,
      this.corLegenda,
      this.teclado,
      required this.controller,
      this.icon,
      this.isSenha,})
      : super(key: key);

  @override
  State<CampoFormLogin> createState() => _TextFormFieldState();
}

class _TextFormFieldState extends State<CampoFormLogin> {
  bool mostrarSenha = false;
  bool CampodeSenha() {
    return widget.isSenha ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              obscureText: mostrarSenha,
              keyboardType: widget.teclado ?? TextInputType.text,
              controller: widget.controller,
              decoration: InputDecoration(
                  hintText: widget.dica ?? '',
                  label: Text(widget.label),
                  prefixIcon: widget.icon,
                  fillColor: widget.corForm ?? Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 7),
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
