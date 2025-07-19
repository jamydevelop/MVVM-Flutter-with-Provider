import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/home_screen.dart';
import 'package:mvvm_flutter_with_provider/users_list/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersViewModel())
      ],
      child: MaterialApp(
      title: 'MVVM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      ),
    );
  }
}
