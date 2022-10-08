import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalhotcc/modules/monitorarGeral/pages/mon_geral.dart';
import 'package:trabalhotcc/shared/components/botaoTexto.dart';

import '../../../shared/components/campoForm.dart';
import '../../../shared/components/campoFormLogin.dart';
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
      backgroundColor: const Color.fromARGB(255, 192, 229, 208),
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

            CampoFormLogin(
              label: 'Nome completo',
              dica: 'ex.: fulano de tal',
              controller: _controller.nome,

            ),
            CampoFormLogin(
              label: 'Nome de usuario',
              dica: 'ex.: usuario123',
              controller: _controller.nomeUsu,
            ),

            CampoFormLogin(
              label: 'Nome da propriedade',
              dica: 'ex.: Fazendinha Feliz',
              controller: _controller.nomeProp,
            ),

            CampoFormLogin(
              label: 'CPF',
              dica: 'ex.: 123.456.891-70',
              controller: _controller.cpf,
            ),

            CampoFormLogin(
              label: 'E-mail',
              dica: 'ex.: fulanodetal@gmail.com',
              controller: _controller.email,
              teclado: TextInputType.emailAddress,
            ),

            CampoFormLogin(
              label: 'Senha',
              dica: 'ex.: 123456',
              controller: _controller.senha,
              isSenha: true,
            ),

            Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: BotaoTexto(
              texto: 'Salvar', 
              tamanhoBotao: Size(80,60), 
              funcao: () {
                Navigator.pop(context);
              }, 
              corBotao: Colors.green,
            ),
          ),
          ],
        ),
      ),
    );
  }
}
