import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hamburgueria/pages/home_page.dart';
import 'package:hamburgueria/pages/single_item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "singleItemsPage": (context) => SingleItemPage(),
      },
    );
  }
}
