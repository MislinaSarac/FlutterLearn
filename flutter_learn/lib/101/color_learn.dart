import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final ColorItems colorItems = ColorItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // color: Theme.of(context).errorColor,
        child: Text(
          "data",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Theme.of(context).errorColor),
        ),
      ),
    );
  }
}

class ColorItems {
  final Color porchase = const Color(0xffEDBF61);
  final Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
