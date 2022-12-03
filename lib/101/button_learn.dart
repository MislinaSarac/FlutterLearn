import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text("data", style: Theme.of(context).textTheme.subtitle1),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.yellow;
              })),
              //onPressed: (),
            ),
            ElevatedButton(onPressed: null, child: Text("data")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_sharp)),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {},
                child: const SizedBox(width: 200, child: Text("data"))),
            InkWell(
              onTap: () {},
              child: const Text("data"),
            ),
            Container(
              height: 200,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onPressed: () {},
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 40, left: 40),
                  child: Text(
                    "Place Bid",
                    style: Theme.of(context).textTheme.headline5,
                  )),
            ),
          ],
        ));
  }
}
