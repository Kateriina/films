import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Films',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Films'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: const _FilmList(),
    );
  }
}

class _FilmList extends StatelessWidget {
  const _FilmList({super.key});

  static final List<String> films = <String>[
    'Служебный роман',
    'Москва слезам не верит',
    'Иван Васильевич меняет профессию',
    'Джентльмены удачи',
    'Бриллиантовая рука'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        films.length,
        (int index) => ColoredBox(
          color: Colors.purple,
          child: FilmTile(title: films[index]),
        ),
      ),
    );
  }
}

class FilmTile extends StatelessWidget {
  const FilmTile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: FlutterLogo(),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Text(title),
              const Row(
                children: <Widget>[
                  Icon(Icons.star),
                  Text('4.8'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
