import 'package:flutter/material.dart'; // importa o pacote de design do Flutter

void main() { // inicia a função principal do programa
  runApp(const MyApp()); // roda a aplicação Flutter
}

class MyApp extends StatelessWidget { // define o widget raiz do app
  const MyApp({super.key}); // widget único

  @override // sobrescreve o método que já existe na classe pai
  Widget build(BuildContext context) { // método que constrói a interface
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // remove a faixa de debug
      home: TelaInicio(), // define a tela inicial
    );
  }
}

class TelaInicio extends StatelessWidget { //tela de entrada
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
    );
  }
}
