import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl1IRhTfO3p1msg_RoCGh6PQHBWcvyIX_83Q&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 200,
          width: 150,
          child: PngImage(name: ImageItems().appleWithoutPath),
        ),
        Image.network(
          _imagePath,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_outlined),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/book.png";
  final String appleBook = "assets/png/book2.png";
  final String appleWithoutPath = "book2";
}

class PngImage extends StatelessWidget {
  PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/png/$name.png";
}
