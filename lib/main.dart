import 'package:flutter/material.dart';
import 'componentes/jogo_da_velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                // Espaço Superior (opcional)
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      // Primeira Coluna (opcional)
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 223, 255),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 71, 10, 82),
                          width: 3,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: JogoDaVelha(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // Terceira Coluna (opcional)
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // Layout Inferior (opcional)
              ),
            ),
          ],
        ),
      ),
    );
  }
}