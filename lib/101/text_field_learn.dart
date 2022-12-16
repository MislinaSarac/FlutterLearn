import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  //FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TextField(
            maxLength: 20,
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            // focusNode: focusNodeTextFieldOne,
            textInputAction: TextInputAction.next,
            // decoration: _InputDecarator().emailInput,
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}

class _InputDecarator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
