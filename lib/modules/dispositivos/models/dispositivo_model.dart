// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Dispositivo {
  String nome;
  String cod;
  String setor;
  bool status;
  int img;
  Dispositivo({
    required this.nome,
    required this.cod,
    required this.setor,
    required this.status,
    required this.img,
  });

  Dispositivo copyWith({
    String? nome,
    String? cod,
    String? setor,
    bool? status,
    int? img,
  }) {
    return Dispositivo(
      nome: nome ?? this.nome,
      cod: cod ?? this.cod,
      setor: setor ?? this.setor,
      status: status ?? this.status,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'cod': cod,
      'setor': setor,
      'status': status,
      'img': img,
    };
  }

  factory Dispositivo.fromMap(Map<String, dynamic> map) {
    return Dispositivo(
      nome: map['nome'] as String,
      cod: map['cod'] as String,
      setor: map['setor'] as String,
      status: map['status'] as bool,
      img: map['img'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dispositivo.fromJson(String source) => Dispositivo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Dispositivo(nome: $nome, cod: $cod, setor: $setor, status: $status, img: $img)';
  }

  @override
  bool operator ==(covariant Dispositivo other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.cod == cod &&
      other.setor == setor &&
      other.status == status &&
      other.img == img;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
      cod.hashCode ^
      setor.hashCode ^
      status.hashCode ^
      img.hashCode;
  }
}
