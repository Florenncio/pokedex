import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/details/container/detail_continer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.list, required this.OnItemTap})
      : super(key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) OnItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(list[index].name),
              onTap: () => OnItemTap(
                '/details',
                DetailArguments(name: list[index].name),
              ),
            );
          }),
    );
  }
}
