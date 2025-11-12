import 'package:flutter/material.dart';   // CHAMA FLUTTER

void main() {
  runApp(const MyApp());      //INICIA A PAGINA FLUTTER
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 248, 147, 147),  // A BARRA SUPERIOR
          title: const Text("WHATIZAP"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert), // botão de opções
            ),
          ],
        ),

        body: Row(    // O CORPO PRINCIPAL DA PAGINA
          children: [
            // MENU LATERAL
            SizedBox(
              width: 50,
              height: double.infinity,
              child: Container(color: Colors.red),
            ),

            // COLUNA DOS CONTATOS PESQUISAS E BOTOES
            SizedBox(
              width: 250,
              height: double.infinity,
              child: Container(
                color: Colors.green[700],
                child: Column(
                  children: [
                    // Barra de pesquisa
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pesquisar contato...',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    // Linha de botões arredondados
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribui os botões de forma igual
                      mainAxisSize: MainAxisSize.min,  // O Row ocupará apenas o espaço necessário
                      children: [
                        Expanded( // Faz o botão se ajustar ao tamanho disponível
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text("Botão 1"),
                            ),
                          ),
                        ),
                        Expanded( // Faz o botão se ajustar ao tamanho disponível
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[700],
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text("Botão 2"),
                            ),
                          ),
                        ),
                        Expanded( // Faz o botão se ajustar ao tamanho disponível
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text("Botão 3"),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Lista rolável de contatos
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,  // Número de contatos (aqui é 20, mas pode ser qualquer número)
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.person),
                            ),
                            title: Text("Contato ${index + 1}"),
                            subtitle: const Text("mensagem"),
                          
                            onTap: () {
                              // Ação ao clicar em um contato (pode ser aberta a conversa, por exemplo)
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Coluna azul (área principal da conversa)
            Expanded(
              child: Container(
                color: Colors.blue[700],
                child: const Center(
                  child: Text(
                    "Área principal",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
