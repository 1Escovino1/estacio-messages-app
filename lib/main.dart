import 'package:flutter/material.dart'; // importa o pacote de design do Flutter

void main() {
  // função principal que inicia o app
  runApp(const MyApp()); // roda a aplicação Flutter passando o widget raiz
}

class MyApp extends StatelessWidget {
  // Widget raiz do app
  const MyApp({super.key}); // construtor do widget

  @override
  Widget build(BuildContext context) {
    // método que constrói a interface
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove a faixa de debug
      home: const TelaInicio(), // define a tela inicial do app
    );
  }
}

class TelaInicio extends StatelessWidget {
  // tela de entrada
  const TelaInicio({super.key}); // construtor do widget

  @override
  Widget build(BuildContext context) {
    // método que constrói a interface da tela
    return Scaffold(
      // Scaffold fornece a estrutura básica do Material
      body: Container(
        // Container é usado para preencher a tela e definir cor
        color: Colors.white, // define o fundo da tela como branco
        width: double.infinity, // largura máxima
        height: double.infinity, // altura máxima
        child: const Center(
          child: Text(
            'teste',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
