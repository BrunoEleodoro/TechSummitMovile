import 'dart:io';
import 'dart:html' as html;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var lista = [
    {
      'nome': 'Bruno',
      'sobrenome': 'Eleodoro',
    },
    {
      'nome': 'Kevlin',
      'sobrenome': 'Ossada',
    },
    {
      'nome': 'Rafael',
      'sobrenome': 'Carvalho',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech Summit'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container();
                    });
              },
              leading: Icon(Icons.person),
              title: Text(lista[index]['nome']),
              subtitle: Text(lista[index]['sobrenome']),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {
          html.window.open("https://google.com", "_blank");
        },
      ),
    );
  }
}
