import 'package:cara_ou_coroa/second_scream.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class FirstScream extends StatefulWidget {
  const FirstScream({super.key});

  @override
  State<FirstScream> createState() => _FirstScreamState();
}

class _FirstScreamState extends State<FirstScream> {
  void _exibirResultado() {
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (_) => TelaResultado(valor:resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
