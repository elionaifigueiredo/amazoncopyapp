

import 'package:flutter/material.dart';
import 'package:tarefa/model/Impressoras.dart';

class ListaDetalhada extends StatefulWidget {
  final Impressora impressora;

  const ListaDetalhada({Key? key, required this.impressora}) : super(key: key);

  @override
  State<ListaDetalhada> createState() => _ListaDetalhadaState();
}

class _ListaDetalhadaState extends State<ListaDetalhada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.impressora.Title),
        actions: [
          Icon(Icons.print)

        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(widget.impressora.Title),
              const SizedBox(height: 50,),
              Image.asset(widget.impressora.Img, height: 150, width: 300,)
            ],
          ),
        ),
      ),
    );
  }
}
