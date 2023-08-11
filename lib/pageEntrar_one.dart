import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:tarefa/PageLista.dart';

class Janela_Home extends StatelessWidget {
  const Janela_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageEntrar(),
    );
  }
}

class PageEntrar extends StatefulWidget {
  const PageEntrar({
    Key? key,
  }) : super(key: key);

  @override
  State<PageEntrar> createState() => _PageEntrarState();
}

class _PageEntrarState extends State<PageEntrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/amazoncopy.png',
              width: 200,
            ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),
            const SizedBox(
              height: 35,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .4),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 0.8),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email ",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 0.8),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Senha",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),
                      ],
                    ),
                  ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Color.fromRGBO(240, 255, 255, 1)),
                  ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),
                  const Divider(
                    endIndent: 50,
                    indent: 50,
                    color: Colors.white,
                  ),
                  const Text(
                    'Registrar-se',
                    style: TextStyle(color: Color.fromRGBO(240, 255, 255, 1)),
                  ).animate().fadeIn(duration: 1000.ms).slide(duration: 1000.ms),


                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(20, 40, 208, .3),
                          Color.fromRGBO(1, 234, 191, .2)
                        ])),
                    child: Center(

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PageLista()));
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
