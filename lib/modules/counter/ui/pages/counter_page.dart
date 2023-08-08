import 'package:first_app_vicente/modules/counter/structure/couter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state.counter == 102) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Counter is ${state.counter}'),
                  );
                });
          }
        },
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  "App Contador",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              body: Center(
                child: Text(
                  state.counter.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
              ),
              floatingActionButton: FloatingActionButton(onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(IncrementCounterEvent());
              }),
            );
          },
        ),
      ),
    );
  }
}
