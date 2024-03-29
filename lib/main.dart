import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/container_sized_box_learn.dart';
import 'package:flutter_learn/101/scaffold_learn.dart';
import 'package:flutter_learn/101/text_learn.dart';
import 'package:flutter_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_learn/demos/node_demos_view.dart';
import 'package:flutter_learn/demos/my_collection_demos.dart';

import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/indicator_learn.dart';
import '101/list_view_builder_learn.dart';
import '101/list_view_learn.dart';
import '101/my_collections_demos.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/statefull_learn.dart';
import '101/statefull_life_cycle_learn.dart';
import '101/stateless_learn.dart';
import '101/image_learn.dart';
import '101/list_tile_learn.dart';
import '101/text_field_learn.dart';
import '202/model_learn_view.dart';
import '202/tab_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/stack_demo_view.dart';
import 'demos/color_life_cycle_view.dart';
import 'demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the  of yourootr application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          bottomAppBarTheme: BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: MyCollectionsDemos(),
    );
  }
}
