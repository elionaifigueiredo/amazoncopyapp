import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefa/detalhe/gestaodetalhada.dart';

import '../model/Gestao.dart';

class Mycircular extends StatelessWidget {
  final Gestao gestao;


  const Mycircular({Key? key, required this.gestao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GestaoDetalhe(gestao: gestao)));
      },

      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,

            ),

            child: Image.asset(gestao.Img),
          ),


        ),
    );
  }
}
