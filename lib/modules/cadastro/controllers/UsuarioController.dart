import 'package:flutter/cupertino.dart';

import '../../dispositivos/models/usuarioModel.dart';

class UsuarioController extends ChangeNotifier {
  final nome = TextEditingController();
  final nomeUsu = TextEditingController();
  final cpf = TextEditingController();
  final nomeProp = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();

  void salvarOnPressed(
      {required VoidCallback onSucess,
      required VoidCallback? Function(String erro) onFailure}) {
    try {
      final usuario = UsuarioModel(
          email: email.text,
          nomeUsu: nomeUsu.text,
          nomeProp: nomeProp.text,
          cpf: cpf.text,
          nome: nome.text,
          senha: senha.text);
      usuario.isValid();
    } catch (e) {
      onFailure(e.toString());
    }
  }
}
