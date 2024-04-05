import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Card1(),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teacher"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/img1.webp"),
            title: const Text('Robert Steven'),
            subtitle:const Icon(Icons.car_rental),
            trailing: const Text("Log Out"),
            onTap: () {
              // Add your onTap logic here
            },
          ),
          Container(
            color: Colors.blue,
            child: const Text("online | Battery: 90%"),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, // Number of columns in the grid
              children: List.generate(6, (index) {
                return Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Icon(Icons.location_city),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}