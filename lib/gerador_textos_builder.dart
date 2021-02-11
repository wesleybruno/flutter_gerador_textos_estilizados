import 'package:flutter/material.dart';

class GeradorTextosBuilder {
  GeradorTextosBuilder._();

  static GeradorTextosBuilder get instance => GeradorTextosBuilder._();

  List<TextSpan> _listTextSpan = [];

  GeradorTextosBuilder normal(String texto) {
    final textWidget = TextSpan(
      text: texto,
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  GeradorTextosBuilder bold(String texto) {
    final textWidget = TextSpan(
      text: texto,
      style: TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  GeradorTextosBuilder italic(String texto) {
    final textWidget = TextSpan(
      text: texto,
      style: TextStyle(
        fontStyle: FontStyle.italic,
      ),
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  GeradorTextosBuilder underline(String texto) {
    final textWidget = TextSpan(
      text: texto,
      style: TextStyle(
        decoration: TextDecoration.underline,
      ),
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  GeradorTextosBuilder space() {
    final textWidget = TextSpan(
      text: ' ',
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  GeradorTextosBuilder breakLine() {
    final textWidget = TextSpan(
      text: '\n',
    );

    _listTextSpan.add(textWidget);
    return this;
  }

  Widget builder() {
    Widget textWidget = Text.rich(
      TextSpan(
        children: _listTextSpan,
      ),
    );

    return textWidget;
  }
}
