import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Barang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(
    100,
    (index) => {
      'title': 'Item $index',
      'subtitle': 'Subtitle $index',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Barang'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text(items[index]['title']!),
            subtitle: Text(items[index]['subtitle']!),
          );
        },
      ),
    );
  }
}
