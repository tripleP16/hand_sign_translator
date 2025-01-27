import 'package:flutter/material.dart';

class ListenerScreen extends StatelessWidget {
  const ListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listener Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Respond to button press
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
