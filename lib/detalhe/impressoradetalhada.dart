
import 'package:chaleno/chaleno.dart';
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
              const SizedBox(height: 10,),
              Image.asset(widget.impressora.Img, height: 150, width: 300,),
              const SizedBox(height: 20,),
              Text(widget.impressora.descricao)
            ],
          ),
        ),
      ),

      // Button para adicionar um novo produto
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () => _showTaskModal(context),
          child: const Icon(Icons.description),
        ),



    );
  }
}

void _showTaskModal(BuildContext context) {

  showModalBottomSheet(context: context,
      isScrollControlled: true,
      builder: (_)=> const _NewTaskModal());

}

class _NewTaskModal extends StatelessWidget {
  const _NewTaskModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(
          horizontal: 33,
          vertical: 23
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(21)),
          color: Colors.green[100]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Descrição desta Impressora'),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Descrição do Produto',
            ),
          ),
          const SizedBox(height: 10,),

          ElevatedButton(onPressed: (){}, child: const Text('Salvar'),

          ),

        ],
      ),

    );
  }
}
