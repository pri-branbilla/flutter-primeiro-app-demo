import 'package:flutter/material.dart';
import 'ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {
  Color corAtual = Colors.blue;

  void _trocarCor() {
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ciclo de Vida - Stateful Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Simulando os diferentes estágios do ciclo de vida de um StatefulWidget', textAlign: TextAlign.center,),
            SizedBox(height: 20),
            CicloStateful(cor: corAtual),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _trocarCor,
              child: Text('Trocar cor (trigger didUpdateWidget)'),
            ),
          ],
        ),
      ),
    );
  }
}
