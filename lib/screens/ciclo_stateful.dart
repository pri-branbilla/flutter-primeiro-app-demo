import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  const CicloStateful({super.key});

  @override
  State<CicloStateful> createState() => _CicloStatefulState();
}

class _CicloStatefulState extends State<CicloStateful> {
  @override
  void initState() {
    super.initState();
    print('initState: Widget foi criado!');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies: Widget recebeu dependências!');
  }

  @override
  void didUpdateWidget(covariant CicloStateful oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: Widget foi atualizado!');
  }

  @override
  void dispose() {
    print('dispose: Widget foi destruído!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build: Widget reconstruído!');
    return Scaffold(
      appBar: AppBar(title: Text('Ciclo de Vida')),
      body: Center(
        child: Text(
          'Veja os logs no terminal para acompanhar o ciclo de vida.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
