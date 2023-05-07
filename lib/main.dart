import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Tampil_world.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    routes: <String, WidgetBuilder>{
      '/page1' : (BuildContext context) => const Home(),
      '/page2' : (BuildContext context) => Tampilworld(),
    },
  ));
}

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('GoWorld'),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Center( //menambahkan gambar pada page home
            child: Image.asset('images/world.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            //membuat fungsi button
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed : (){
                //melakukan perpindahan page ketika button di klik
                Navigator.pushNamed(context, '/page2');
              }, child: Text("Mulai", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    ),
  );
  }
}