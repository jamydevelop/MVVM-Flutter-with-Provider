import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/counter_provider.dart';
import 'package:mvvm_flutter_with_provider/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Root widget is wrap by the ChangeNotifierProvider
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
