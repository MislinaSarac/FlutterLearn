import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  title: const RandomImage(),
                  subtitle: const Text("How do you use card"),
                  minVerticalPadding: 0,
                  dense: true,
                  leading:
                      Container(height: 100, child: const Icon(Icons.money)),
                  trailing: const SizedBox(
                      height: 100, child: Icon(Icons.arrow_right)),
                ),
              ),
            )
          ],
        ));
  }
}
