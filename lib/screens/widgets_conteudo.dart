import 'package:flutter/material.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Conteúdo e Organização')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SecaoTitulo('Text'),
          Text(
            'Texto Estilizado',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Divider(),

          SecaoTitulo('Container'),
          Container(
            padding: EdgeInsets.all(12),
            color: Colors.amber,
            child: Text('Container com padding interno'),
          ),

          Divider(),

          SecaoTitulo('Row e Icon'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home),
              Icon(Icons.star),
              Icon(Icons.settings),
            ],
          ),

          Divider(),

          SecaoTitulo('Image'),
          Image.network(
            'https://picsum.photos/id/237/200/300',
            width: 100,
          ),

          Divider(),

          SecaoTitulo('ElevatedButton'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Botão de Exemplo'),
          ),
        ],
      ),
    );
  }
}

class SecaoTitulo extends StatelessWidget {
  final String titulo;

  const SecaoTitulo(this.titulo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        titulo,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
