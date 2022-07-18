import 'package:flutter/material.dart';
import 'package:trabalhotcc/modules/Cadastro/Pages/cadastroPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key, String? title }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {

  var mostrarSenha = false;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),

       body: 
       
       
      
      ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [

          Image.asset('assets/images/Logo2.png', width: 350, height: 350,),
          //EMAIL
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
            hintText: 'Ex. exemplo@email.com',
            label: Text('Email:'),
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true

            ),
          ),
          ),

           //SENHA
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            obscureText: mostrarSenha,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
            hintText: '12345678',
            label: Text('Senha:'),
            prefixIcon: Icon(Icons.lock),
            fillColor: Colors.white,
            filled: true,
            suffix: IconButton(onPressed: (){
              setState(() {
                 mostrarSenha = !mostrarSenha;
              });
            }, 
            icon: Icon(mostrarSenha== true? Icons.visibility_off : Icons.remove_red_eye_outlined),),
            border: OutlineInputBorder()
            ),
          ),
          ),

           //botão entrar
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: ElevatedButton(onPressed: (){},
          child: Text ('Entrar',
          style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            minimumSize: Size(100, 50)
          ),
          ),
          ),
            //botão cadastrar
             Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: ElevatedButton(onPressed: (){
            final rota = MaterialPageRoute(builder: (context) => const cadastroUsuario());
            Navigator.of(context).push(rota);
          },
          child: Text ('Cadastre-se',
          style: TextStyle(color: Colors.teal),),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            minimumSize: Size(100, 50)
          ),
          ),

          ),
        ],
        ),

    );
  
}
}