import 'package:flutter/material.dart';

import 'package:flutter_app/blocs/counter_bloc.dart';
import 'package:flutter_app/widgets/bloc_provider.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  void dispose() {
    print('Third Disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Third Page');

    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: ListView(
              children: [
                new RaisedButton(
                  child: new Text('Add Counter'),
                  onPressed: () {
                    counterBloc.increment();
                  },
                ),
                new RaisedButton(
                  child: new Text('Fourth Page Screen'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourth');
                  },
                ),
              ],
          )
      ),
    );
  }
}