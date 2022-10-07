import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../shared/components/campoForm.dart';
import '../controllers/UsuarioController.dart';

class cadastroUsuario extends StatefulWidget {
  const cadastroUsuario({Key? key}) : super(key: key);

  @override
  State<cadastroUsuario> createState() => _cadastroUsuarioState();
}

class _cadastroUsuarioState extends State<cadastroUsuario> {
  final _controller = UsuarioController();
  var mostrarSenha = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Form(
        child: ListView(
          children: [
            Image.asset(
              'assets/images/Logo2.png',
              width: 350,
              height: 350,
            ),
            CampoForm(
              label: 'Seu nome completo',
              dica: 'ex: fulano de tal',
              controller: _controller.nome,
              legenda: '',
            ),
            CampoForm(
              label: 'Nome de usuario',
              dica: 'usuario',
              controller: _controller.nomeUsu,
              legenda: '',
            ),
            CampoForm(
              label: 'Nome da propriedade',
              dica: 'Fazendinha feliz',
              controller: _controller.nomeProp,
              legenda: '',
            ),
            CampoForm(
              label: 'CPF',
              dica: '123.456.891-70',
              controller: _controller.cpf,
              legenda: '',
            ),
            CampoForm(
              label: 'E-mail',
              dica: 'ex: fulanodetal@gmail.com',
              controller: _controller.email,
              teclado: TextInputType.emailAddress,
              legenda: '',
            ),
            CampoForm(
              label: 'Senha',
              dica: '123456',
              controller: _controller.senha,
              isSenha: true,
              legenda: '',
            ),
          ],
        ),
      ),
    );
  }
}
