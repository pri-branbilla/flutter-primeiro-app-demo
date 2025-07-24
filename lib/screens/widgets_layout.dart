import 'package:flutter/material.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Layout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Com Padding Interno'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Alinhado à Direita'),
            ),
            Center(child: Text('Centralizado')),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Container(height: 40, color: Colors.red)),
                SizedBox(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(height: 40, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
