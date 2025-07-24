import 'package:flutter/material.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Layout')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SecaoTitulo('Padding'),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text('Este texto tem padding interno de 16.'),
          ),

          Divider(),

          SecaoTitulo('Align'),
          SizedBox(
            height: 80,
            child: Align(
            alignment: Alignment.centerRight,
            child: Text('Alinhado à Direita'),
          ),
          ),
          

          Divider(),

          SecaoTitulo('Center'),
          Center(
            child: Text('Centralizado com Center'),
          ),

          Divider(),

          SecaoTitulo('SizedBox'),
          Column(
            children: [
              Text('Texto acima'),
              SizedBox(height: 20),
              Text('Texto abaixo (com espaço de 20px)'),
            ],
          ),

          Divider(),

          SecaoTitulo('Column com Expanded e Flexible'),
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.blue, child: Center(child: Text('Expanded'))),
                ),
                Flexible(
                  flex: 2,
                  child: Container(color: Colors.green, child: Center(child: Text('Flexible (flex: 2)'))),
                ),
              ],
            ),
          ),

          Divider(),

          SecaoTitulo('Row com Expanded e Flexible'),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(height: 40, color: Colors.red),
              ),
              Flexible(
                flex: 1,
                child: Container(height: 40, color: Colors.green),
              ),
            ],
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
