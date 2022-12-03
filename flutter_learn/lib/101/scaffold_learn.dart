import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold samples")),
      body: const Text("Merhaba"),
      backgroundColor: Colors.grey,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        const BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: "a"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: "b"),
      ]),
    );
  }
}
