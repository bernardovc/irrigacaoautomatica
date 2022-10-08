import 'package:flutter/material.dart';
import 'package:trabalhotcc/modules/Cadastro/Pages/cadastroPage.dart';
import 'package:trabalhotcc/shared/components/botaoTexto.dart';
import 'package:trabalhotcc/shared/components/campoFormLogin.dart';

import '../../monitorarGeral/pages/mon_geral.dart';
import '../Controllers/loginControllers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, String? title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mostrarSenha = false;
  final _controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image.asset(
            'assets/images/Logo2.png',
            width: 350,
            height: 350,
          ),

          //EMAIL
          CampoFormLogin(
            label: 'Email', 
            controller: _controller.email, 
            dica: 'Ex. exemplo@email.com', 
            teclado: TextInputType.emailAddress, 
            icon: Icon(Icons.mail),
          ),

          //SENHA
          CampoFormLogin(
            label: 'Senha', 
            controller: _controller.senha, 
            dica: 'Ex. 12345678', 
            isSenha: true, 
            icon: Icon(Icons.lock),
          ),

          //Botão Entrar
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: BotaoTexto(
              texto: 'Entrar', 
              funcao: (){
                _controller.ValidarDados(
                  onSuccess: (){
                    final rota = MaterialPageRoute(builder: (context) => const MonitorGeral());
                    Navigator.of(context).push(rota);
                  }, 
                  
                  onFailure: (String erro) {
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(erro)));
                  });
              }, 
              tamanhoBotao: Size(150,50), 
              corBotao: Colors.teal,
            ),
          ),

          //Botão Cadastrar
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: BotaoTexto(
              texto: 'Cadastre-se', 
              funcao: (){
                 final rota = MaterialPageRoute(builder: (context) => const cadastroUsuario());
                 Navigator.of(context).push(rota);
              }, 
              tamanhoBotao: Size(150,50), 
              corBotao: Colors.white, 
              corTexto: Colors.teal,
            ),
          ),

        ],
      ),
    );
  }
}
