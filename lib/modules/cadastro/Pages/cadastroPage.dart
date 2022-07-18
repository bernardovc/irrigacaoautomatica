import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cadastroUsuario extends StatefulWidget {
  const cadastroUsuario({Key? key}) : super(key: key);

  @override
  State<cadastroUsuario> createState() => _cadastroUsuarioState();
}

class _cadastroUsuarioState extends State<cadastroUsuario> {
  
  var mostrarSenha = false;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 229, 208),
appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: ListView(



        children: [
          Image.asset('assets/images/Logo2.png', width: 350, height: 350,),
         //nome completo
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
            hintText: 'Maria Silva',
            label: Text('Nome de completo:'),
            prefixIcon: Icon(Icons.account_circle),
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true

            ),
          ),
          ),
            //nome usuario
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
            hintText: 'Ex. usuario',
            label: Text('Nome de usuário:'),
            prefixIcon: Icon(Icons.account_circle),
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true

            ),
          ),
          ),
             Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
            hintText: 'Ex. usuario',
            label: Text('Nome da propriedade:'),
            prefixIcon: Icon(Icons.add_home_work),
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true

            ),
          ),
          ),

             Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            hintText: 'Ex. 123456789',
            label: Text('CPF:'),
            prefixIcon: Icon(Icons.accessibility),
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true

            ),
          ),
          ),


            //EMAIL
          Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
            hintText: 'Ex. exemplo@email.com',
            label: Text('Email:'),
            prefixIcon: Icon(Icons.mail),
            // ignore: prefer_const_constructors
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
           Padding(padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
          child: ElevatedButton(onPressed: (){
             Navigator.pop(context);
          },
          child: Text ('Voltar',
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
          child: Text ('Cadastrar',
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