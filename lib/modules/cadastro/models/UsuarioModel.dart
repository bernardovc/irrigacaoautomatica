// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsuarioModel {
  String? nome;
  String? nomeUsu;
  String? email;
  String? senha;
  String? cpf;
  String? nomeProp;

  UsuarioModel({
    this.nome,
    this.nomeUsu,
    this.email,
    this.senha,
    this.cpf,
    this.nomeProp,
  });

  UsuarioModel copyWith({
    String? nome,
    String? nomeUsu,
    String? email,
    String? senha,
    String? cpf,
    String? nomeProp,
  }) {
    return UsuarioModel(
      nome: nome ?? this.nome,
      nomeUsu: nomeUsu ?? this.nomeUsu,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      cpf: cpf ?? this.cpf,
      nomeProp: nomeProp ?? this.nomeProp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'nomeUsu': nomeUsu,
      'email': email,
      'senha': senha,
      'cpf': cpf,
      'nomeProp': nomeProp,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      nome: map['nome'] != null ? map['nome'] as String : null,
      nomeUsu: map['nomeUsu'] != null ? map['nomeUsu'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      nomeProp: map['nomeProp'] != null ? map['nomeProp'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuarioModel(nome: $nome, nomeUsu: $nomeUsu, email: $email, senha: $senha, cpf: $cpf, nomeProp: $nomeProp)';
  }

  @override
  bool operator ==(covariant UsuarioModel other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.nomeUsu == nomeUsu &&
        other.email == email &&
        other.senha == senha &&
        other.cpf == cpf &&
        other.nomeProp == nomeProp;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        nomeUsu.hashCode ^
        email.hashCode ^
        senha.hashCode ^
        cpf.hashCode ^
        nomeProp.hashCode;
  }

  bool isValid() {
    if (nome == null || nome!.isEmpty) {
      throw Exception("Nome não informado");
    }
    if (senha == null || senha!.isEmpty) {
      throw Exception("senha não informado");
    }
    if (email == null || email!.isEmpty) {
      throw Exception("Nome não informado");
    }
    return true;
  }
}
