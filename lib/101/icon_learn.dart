import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.error,
                size: iconSize.iconSmall2x,
              )),
          SizedBox(height: 40),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  final double iconSmall2x = 80;
}

class IconColors {
  final Color froly = Color(0xffED617A);
}
