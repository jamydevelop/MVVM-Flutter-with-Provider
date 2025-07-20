import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/components/app_title.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(title: 'Add User'),
      ),
    );
  }
}