import 'package:flutter/material.dart';
import 'package:go_world/World.dart';

class Tampilworld extends StatelessWidget {
  const Tampilworld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("GoWorld"),
      ),
      // mengatur posisi gambar yang akan di tampilkan
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Text('Selamat Datang',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: WorldTs(),
          ),
        ],
      ),
    );
  }
}
