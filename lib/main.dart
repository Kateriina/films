import 'package:films/app/model/film_card_model.dart';
import 'package:films/app/widgets/film_tile.dart';
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

//TIME 59:43
class _FilmList extends StatelessWidget {
  const _FilmList({super.key});

  static final List<FilmCardModel> _films = [
    FilmCardModel(
      id: 0,
      title: 'Служебный роман',
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/1777765/fd4e75bb-a6fe-46ef-86cd-0f470334fcbd/300x450',
      voteAverage: 8.3,
      releaseDate: '1977',
      description:
          'Робкий холостяк решает приударить за строгой начальницей. Комедия Эльдара Рязанова, классика советского кино',
    ),
    FilmCardModel(
      id: 1,
      title: 'Москва слезам не верит',
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/4774061/f94e36eb-2a77-422b-94f2-c599c418497c/300x450',
      voteAverage: 8.4,
      releaseDate: '1979',
      description:
          'Три девушки переезжают в Москву в поисках любви, дружбы и успеха. Советский хит, отмеченный «Оскаром»',
    ),
    FilmCardModel(
      id: 2,
      title: 'Иван Васильевич меняет профессию',
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/a7ef44b8-1983-4992-a889-da6f87a3f559/300x450',
      voteAverage: 8.8,
      releaseDate: '1973',
      description:
          'Иван Грозный отвечает на телефон, пока его тезка-пенсионер сидит на троне. Советский хит о липовом государе',
    ),
    FilmCardModel(
      id: 3,
      title: 'Джентльмены удачи',
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/218102a7-96be-4d7e-8029-815de0f37cfa/300x450',
      voteAverage: 8.5,
      releaseDate: '1971',
      description:
          'Воспитатель детсада внедряется в банду матерых рецидивистов. Евгений Леонов в разошедшейся на цитаты комедии',
    ),
    FilmCardModel(
      id: 4,
      title: 'Бриллиантовая рука',
      picture:
          'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/a419d20d-4ae6-4c7c-91b3-c38ef9ca1ffe/300x450',
      //      voteAverage: 8.5,
      releaseDate: '1968',
      description:
          'Контрабандисты гоняются за примерным семьянином. Народная комедия с элементами абсурда от Леонида Гайдая',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilmTile.fromModel(model: _films[index % _films.length]),
        );
      },
    );
  }
}
