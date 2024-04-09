import 'package:flutter/material.dart';
import 'contador.dart';
import 'produtos.dart';
import 'usuario.dart';
import 'imc.dart'; // Importa o arquivo 'imc.dart', que provavelmente contém a definição da classe para calcular o índice de massa corporal.


class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _HomePageState();
}
//Define a classe _HomePageState, que estende State<Principal> e gerencia o estado da tela Principal
class _HomePageState extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.greenAccent,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column( // Cria uma coluna para os botões.
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("IMC"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Imc()),
                        );
                      }),
                  ElevatedButton(  // Cria um botão elevado para o contador.
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Usuario()),
                        );
                      }),
                  ElevatedButton( // Cria um botão elevado para o cadastro de usuários.
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Produtos()),
                        );
                      }),
                  ElevatedButton( // Cria um botão elevado para o cadastro de produtos.
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Contador()),
                        );
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
