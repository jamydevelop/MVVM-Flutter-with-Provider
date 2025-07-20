import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/components/app_title.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: AppTitle(title: 'User Details Screen'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}