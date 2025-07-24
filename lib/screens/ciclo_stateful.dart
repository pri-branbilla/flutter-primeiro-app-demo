import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  final Color cor;

  const CicloStateful({super.key, required this.cor});

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
    print('didUpdateWidget: Propriedade mudou? ${oldWidget.cor != widget.cor}');
  }

  @override
  void dispose() {
    print('dispose: Widget foi destruído!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build: Widget reconstruído!');
    return Container(
      height: 150,
      width: 150,
      color: widget.cor,
      child: Center(
        child: Text(
          'Cor atual',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
