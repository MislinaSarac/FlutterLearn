import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVericial,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    padding: EdgeInsets.zero,
                    color: Colors.white,
                    height: 100)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVericial,
              child: const Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVericial = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
