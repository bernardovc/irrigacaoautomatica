import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalhotcc/shared/components/botaoIcon.dart';
import 'package:trabalhotcc/shared/components/botaoTexto.dart';
import 'package:trabalhotcc/shared/components/campoForm.dart';

class PaginaTeste extends StatefulWidget {
  const PaginaTeste({Key? key}) : super(key: key);

  @override
  State<PaginaTeste> createState() => _PaginaTesteState();
}

class _PaginaTesteState extends State<PaginaTeste> {
  final controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
        ]
      ),
    );
  }
}