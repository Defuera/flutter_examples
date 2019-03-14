import 'package:bloc/bloc.dart';
import 'package:examples/listexample/ListExamplePage.dart';
import 'package:examples/navigationHelper.dart';
import 'package:flutter/material.dart';

class ExamplesList extends StatefulWidget {
  @override
  _ExamplesListState createState() => _ExamplesListState();
}

class _ExamplesListState extends State<ExamplesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just Examples"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'List example',
              ),
              onPressed: ()=> navigateTo(context, ListExamplePage()),
            ),
            RaisedButton(
              child: Text(
                'List example',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

//class UiState {
//
//  UiState(List<String>)
//}
//
//class _ExamplesListBloc extends Bloc {
//  @override
//  get initialState => UiState();
//
//  @override
//  Stream mapEventToState(state, event) {
//    return null;
//  }
//}
