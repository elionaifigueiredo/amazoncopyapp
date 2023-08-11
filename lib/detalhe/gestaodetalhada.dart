import 'package:flutter/material.dart';
import 'package:tarefa/model/Gestao.dart';

class GestaoDetalhe extends StatefulWidget {
  final Gestao gestao;

  const GestaoDetalhe({Key? key, required this.gestao}) : super(key: key);

  @override
  State<GestaoDetalhe> createState() => _GestaoDetalheState();
}

class _GestaoDetalheState extends State<GestaoDetalhe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gestao.nome),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(widget.gestao.Img)

            ],

          ),

        ),
      ),
    );
  }
}
