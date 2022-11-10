import 'package:flutter/material.dart';
import 'package:retrouidesign/content_page.dart';
import 'package:retrouidesign/first_page.dart';
import 'package:retrouidesign/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: FirstPage(),
    );
  }
}

class ProjectStyles {
  static TextStyle TitleStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 4,
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold);
  static TextStyle SubtitleStyle =
      const TextStyle(color: Colors.white, wordSpacing: 3, letterSpacing: 2);
  static TextStyle ButtonTextStyle = const TextStyle(
    color: Colors.white,
  );
}

class ProjectUtilty {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.red,
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        );
}
