import 'package:flutter/material.dart';

import 'pageEntrar_one.dart';

void main() {
  runApp(const MyApp());
}

// STATICO
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove banner do canto

      theme: ThemeData(
          //
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // Modal fica transparente
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),

        // O Button com tamanho infinito
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(
              double.infinity,
              54,
            ),

            // borda do button fica circular em 10
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),

            // fonte fica mas grave em negrito
            textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700
            )
          ),
        ),
      ),

      darkTheme: ThemeData.dark(),

      home: const RootPage(),
    );
  }
}

// MODIFICAÇÃO
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PageEntrar(), // adiciona a nova pagina  HomePage

      // // adiciona os icones no rodape
      // bottomNavigationBar: NavigationBar(
      //   destinations: [
      //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //     NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
      //   ],
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       // set o icone atual
      //       currentPage = index;
      //     });
      //   },
      //   selectedIndex: currentPage, // deixar sombra quando selecionado
      // ),
    );
}
}
