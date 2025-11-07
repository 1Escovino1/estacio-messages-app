import 'package:flutter/material.dart'; // importa o pacote de design do Flutter

void main() {
  runApp(const MyApp()); // inicia a aplicação Flutter
}

class MyApp extends StatelessWidget { // Widget raiz do app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // remove a faixa de debug
      home: TelaInicio(), // define a tela inicial
    );
  }
}

class TelaInicio extends StatelessWidget { // tela de entrada
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ColoredBox(
        color: Colors.white, // fundo branco
      ),
    );
  }
}
