import 'package:flutter/material.dart';
import 'package:getxmvvm/data/exceptions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: TextButton(
        child: const Text("Internet exception"),
        onPressed: () {
           ServerException("Server Exception");
        },
      ),
    );
  }
}
