import 'package:bloc/bloc.dart';
import 'package:examples/listexample/ListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

const _imageUrl = "https://nerdist.com/wp-content/uploads/2017/12/bulbasaur-charmander-squirtle-pokemon.jpg";

class ListExamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListExampleState();
  }
}

class _ListExampleState extends State<ListExamplePage> {
  final bloc = ListExampleBloc();

  @override
  Widget build(BuildContext context) {
    bloc.onStart();
    return Scaffold(
        appBar: AppBar(
          title: Text("ListExamplePage"),
        ),
        body: BlocBuilder<Event, ViewModel>(
          bloc: bloc,
          builder: (
            BuildContext context,
            ViewModel viewModel,
          ) {
            if (viewModel.loading) {
              return CircularProgressIndicator();
            } else if (viewModel.data != null) {
              return ListView.builder(
                itemBuilder: (context, index) => buildListWidget(context, index),
                itemCount: calculateAmount(viewModel.data),
              ); //ListItemWidget(viewModel.data);
            } else {
              throw Exception("unknown state");
            }
          },
        ));
  }

  Widget buildListWidget(BuildContext context, int index) {
//    switch (index) {
//      case 0:
//        return HeaderWidget();
//      case 1:
//        return TitleWidget();
//      case 2:
//        return ContentsWidget();
//    }

    throw Exception("Illegal state");
  }

  //every five items we insert title
  int calculateAmount(List<ListItem> data) => data.length + (data.length / 5 as int);
}

abstract class Event {}

abstract class ViewModel {
  bool loading;
  List<ListItem> data;
}

class Loading extends ViewModel {}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: AspectRatio(
        aspectRatio: 2.2,
        child: FadeInImage.memoryNetwork(
          //todo not working
          placeholder: kTransparentImage,
          image: _imageUrl,
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "",
//        S.of(context).page_title_login
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
}

class ContentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "What follows is the definitive and infallible guide to who should portray every one of the original 151 Pokémon were they to be involved in a live action movie. There is no denying that these are the correct choices because of how they were chosen: Some of the actors have physical similarities to their counterpart monsters, others are based more on attitude, some just have rhyming names, and yet others might not make a lick of sense (like the ones who aren't even alive anymore, for instance). So yes, it's definitive.",
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }
}

class ListExampleBloc extends Bloc<Event, ViewModel> {
  @override
  get initialState => Loading();

  @override
  Stream<ViewModel> mapEventToState(state, event) {
    return null;
  }

  void onStart() {}
}

class MockGenerator {}
