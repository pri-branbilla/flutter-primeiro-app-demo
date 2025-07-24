import 'package:flutter/material.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Conteúdo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Texto Estilizado', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.amber,
              child: Text('Container com padding'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home),
                Icon(Icons.star),
                Icon(Icons.settings),
              ],
            ),
            SizedBox(height: 10),
            Image.network(
              'https://picsum.photos/id/237/200/300',
              width: 200,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Botão de Exemplo'),
            ),
          ],
        ),
      ),
    );
  }
}
