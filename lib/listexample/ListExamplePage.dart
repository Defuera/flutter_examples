import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ListExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListExamplePage"),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => buildListWidget(context, index),
      ),
    );
  }

  Widget buildListWidget(BuildContext context, int index) {
    switch (index) {
      case 0:
        return Container(
          color: Colors.yellow,
          child: AspectRatio(
            aspectRatio: 2.2,
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "https://nerdist.com/wp-content/uploads/2017/12/bulbasaur-charmander-squirtle-pokemon.jpg"),
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Now That Ryan Reynolds is Pikachu, We're Dream Casting All 150 Original Pokémon",
            style: Theme.of(context).textTheme.title,
          ),
        ); //todo move to string res

      case 2:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "What follows is the definitive and infallible guide to who should portray every one of the original 151 Pokémon were they to be involved in a live action movie. There is no denying that these are the correct choices because of how they were chosen: Some of the actors have physical similarities to their counterpart monsters, others are based more on attitude, some just have rhyming names, and yet others might not make a lick of sense (like the ones who aren't even alive anymore, for instance). So yes, it's definitive.",
            style: Theme.of(context).textTheme.body1,
          ),
        ); //todo move to string res
    }

    throw Exception("Illegal state");
  }
}
