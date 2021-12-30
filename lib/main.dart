import 'package:flutter/material.dart';
import 'delayed_animation.dart';
import 'welcome_page.dart';
import'page1.dart';
import './projet.dart';
import './projets_list.dart';
const d_red = const Color(0xFFE9717D);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily App',
      debugShowCheckedModeBanner: false,
      home:WelcomePage()
    );
  }
}

