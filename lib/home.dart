import 'package:flutter/material.dart';
import 'package:gerador_textos_builder/gerador_textos_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GeradorTextosBuilder.instance
          .bold('Texto em negrito')
          .space()
          .normal('Texto Normal')
          .breakLine()
          .breakLine()
          .italic('Texto em Italico')
          .breakLine()
          .breakLine()
          .underline('Texto sublinhado')
          .builder(),
    );
  }
}
