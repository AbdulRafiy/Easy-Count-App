import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  const Demo({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State <Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am Demo Screeen'),
        actions: const [
          Icon(Icons.more_vert),
        ],


      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
          const TextField(
            decoration: InputDecoration(
              label: Text('Text Field'),
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
          const Text('I am Text Field'),
          FloatingActionButton(onPressed: (){},child: const Text('FAB'),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.sports_cricket)),
          const TextField(

          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: const [

          ],
        ),
      ),
    );

  }
}