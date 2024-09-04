import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/screen/bloc.dart';
import 'package:responsive_app/screen/demo_Screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
