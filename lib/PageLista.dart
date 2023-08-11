import 'package:flutter/material.dart';
import 'package:tarefa/model/Gestao.dart';
import 'package:tarefa/movimentacao/circular.dart';
import 'package:tarefa/movimentacao/square.dart';

import 'model/Impressoras.dart';

class PageLista extends StatelessWidget {
  final listaImpressora = <Impressora>[
    Impressora('Kyocera', 'images/kyoceras_print.png', 'valores'),
    Impressora('Canon', 'images/canon_print.png', 'valores'),
    Impressora('Epson', 'images/epson_print.png', 'valores'),
    Impressora('Brother', 'images/linha_brother.png', 'valores'),
    Impressora('Oki', 'images/oki_print.png', 'valores'),
  ];

  final listaGestao = <Gestao>[
    Gestao('NDD', 'images/ndd.png'),
    Gestao('UNIFLOW', 'images/uniflow.png'),
    Gestao('KMNETVIEW', 'images/kmnetview.png'),
    Gestao('PAPERCUT', 'images/papercut.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --------------------App Bar ------------------------
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          width: 100,
          child: Image.network(
              'https://amazoncopy.com.br/wp-content/uploads/2023/04/amazoncopy-1.png'),

        ),
        centerTitle: true,
        toolbarOpacity: 0.5,
        actions: [
          Icon(Icons.more_vert),
        ],

      ),

      // ---------------- Corpo do App ---------
      body: Column(
        children: [
          //----------- Text Gerenciamento------------
          const Row(
            children: [
              Icon(
                Icons.bubble_chart_outlined,
                color: Colors.green,
              ),
              Text(
                'Software para Gerenciamento',
              ),
            ],
          ),

          // -------------- Circular---------------
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: listaGestao.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Mycircular(
                  gestao: listaGestao[index],
                );
              },
            ),
          ),

          // --------------TEXT-Modelos-------------------
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.dashboard_customize_sharp,
                  color: Colors.green,
                ),
                Text(
                  'Modelos e Equipamentos',
                )
              ],
            ),
          ),

          // ------------- Square -----------------
          Expanded(
            child: ListView.builder(
                itemCount: listaImpressora.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    impressora: listaImpressora[index],

                  );
                }),
          ),
        ],
      ),

    );
  }
}