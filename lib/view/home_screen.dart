import 'package:flutter/material.dart';
import 'package:getxmvvm/utils/utils.dart';

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
          /*  throw ServerException("Server Exception"); */
          Utils.toastClass("Clicked");
          Utils.snackbar("Hi", "How are you");
        },
      ),
    );
  }
}
