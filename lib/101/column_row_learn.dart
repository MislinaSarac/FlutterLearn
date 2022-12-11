import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("a"),
                  Text("a2"),
                  Text("a3"),
                ],
              )),
          SizedBox(
              height: ProjectConainerSizes.cardHeight,
              child: Column(
                children: const [
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text("data"),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class ProjectConainerSizes {
  static const double cardHeight = 200;
}
