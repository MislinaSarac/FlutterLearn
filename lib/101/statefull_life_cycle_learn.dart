import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _issOdd;

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   print("c");
  // }

  // @override
  // void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
  //   super.didUpdateWidget(oldWidget);

  //   if (oldWidget.message != widget.message) {
  //     _computeName();
  //     setState(() {});
  //     print("b");
  //   }
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  //   _message="";
  // }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _issOdd = widget.message.length.isOdd;
    _computeName();
    print("a");
  }

  void _computeName() {
    if (_issOdd) {
      _message += " çift";
    } else {
      _message += " tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _issOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
