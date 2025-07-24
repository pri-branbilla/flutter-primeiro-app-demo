import 'package:flutter/material.dart';
import 'screens/widgets_conteudo.dart';
import 'screens/widgets_layout.dart';
import 'screens/contador.dart';
import 'screens/ciclo_stateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demonstração Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplos Flutter')),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoNavegacao(
              titulo: 'Widgets de Conteúdo e Organização',
              destino: WidgetsConteudo(),
            ),
            BotaoNavegacao(
              titulo: 'Widgets de Layout',
              destino: WidgetsLayout(),
            ),
            BotaoNavegacao(
              titulo: 'Mudança de Estado - Contador',
              destino: ContadorPage(),
            ),
            BotaoNavegacao(
              titulo: 'Ciclo de Vida do StatefulWidget',
              destino: CicloStateful(),
            ),
          ],
        ),
      ),),
    );
  }
}

class BotaoNavegacao extends StatelessWidget {
  final String titulo;
  final Widget destino;

  const BotaoNavegacao({super.key, required this.titulo, required this.destino});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => destino),
        ),
        child: Text(titulo),
      ),
    );
  }
}
