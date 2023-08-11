import 'package:flutter/material.dart';
import 'package:tarefa/detalhe/impressoradetalhada.dart';
import 'package:tarefa/model/Impressoras.dart';

class MySquare extends StatelessWidget {

  final Impressora impressora;

  const MySquare({Key? key, required this.impressora,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ListaDetalhada(impressora: impressora)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.green[700],
          child: Row(

            children: [
              Container(

                height:150,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(

                    impressora.Title, style: TextStyle(color: Colors.tealAccent),

                  ),

                ),
              ),


              Container(

                child: Image.asset(impressora.Img),
                height: 140,
                width: 220,
              ),




            ],



          ),


        ),

      ),
    );
  }
}
