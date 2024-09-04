import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../responsive_layout.dart';
import 'bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Responsive App',
          style: TextStyle(
            fontSize: ResponsiveLayout.getFontSize(context, 20, 24),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: ResponsiveLayout.getFontSize(context, 16, 20),
              ),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: TextStyle(
                    fontSize: ResponsiveLayout.getFontSize(context, 40, 60),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementCounter());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementCounter());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
