import 'package:flutter/material.dart';
import 'package:flutter_navegacion/src/page/direction/direction_page.dart';

class DirectionDetailPage extends StatelessWidget {
  const DirectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(child: ElevatedButton(
        onPressed: (){
        Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
      ),
    );
  }
}
