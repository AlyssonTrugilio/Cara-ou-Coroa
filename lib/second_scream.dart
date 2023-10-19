import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  String valor = '';
  TelaResultado({super.key, required this.valor});

  @override
  State<TelaResultado> createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  void _voltarInicio() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var caminhoImagem;

    if (widget.valor == 'cara') {
      caminhoImagem = 'images/moeda_cara.png';
    } else {
      caminhoImagem = 'images/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: _voltarInicio,
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}
