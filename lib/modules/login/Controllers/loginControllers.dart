import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();

  void ValidarDados({required VoidCallback onSuccess,
  required VoidCallback? Function(String erro) onFailure}){


    print(senha.value);
    if(email.value.text == 'admin@gmail.com' && senha.value.text == 'admin123'){
      onSuccess();
    } else {
      onFailure('Os dados inseridos não foram encontrados no registro, por favor tente novamente com admin@gmail.com e admin123.');
    }
  }
}