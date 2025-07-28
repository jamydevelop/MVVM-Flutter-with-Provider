import 'package:flutter/material.dart';
import 'package:mvvm_flutter_with_provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Counter Provider App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Counter Number', style: TextStyle(fontSize: 28)),
                Consumer<CounterProvider>(
                  builder: (context, counterProvider, child) {
                    return Text(
                      '${counterProvider.counterVal}',
                      style: TextStyle(fontSize: 28),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              //Add
              Provider.of<CounterProvider>(context, listen: false).increment();
            },
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false).decrement();
            },
          ),
        ],
      ),
    );
  }
}
