import 'package:flutter/material.dart';

import 'social_page.dart';
import './societe.dart';
import 'societes_list.dart';



class projet3 extends StatelessWidget {
  const projet3({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Luxury cars gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _societes = societes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _societes.length,
          itemBuilder: (context, index) {
            Societe societe = _societes[index];
            return Card(
              color: Colors.cyan,
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(child: societe.image),
                    const Divider(color: Colors.white),
                    Text(
                      societe.model,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                     societe.brand,
                      style: const TextStyle(color: Colors.white),
                    ),

                  ],

                ),
              ),
            );

          }

      ),

    );

  }
}
