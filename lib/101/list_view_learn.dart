import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline5,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.pink, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.purple, width: 100),
                  Container(color: Colors.blue, width: 100),
                  Container(color: Colors.black, width: 100),
                ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          //xx
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline5,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(color: Colors.pink, width: 100),
              Container(color: Colors.yellow, width: 100),
              Container(color: Colors.purple, width: 100),
              Container(color: Colors.blue, width: 100),
              Container(color: Colors.black, width: 100),
            ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
