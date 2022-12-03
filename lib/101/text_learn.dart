import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "mislina";

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'welcome $name',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            'hello',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.purple,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.blue;
}

class ProjectKeys {
  final String welcome = "good morning";
}
