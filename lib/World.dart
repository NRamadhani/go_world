import 'package:flutter/material.dart';
import 'Spek_World.dart';


class WorldTs extends StatelessWidget {
  const WorldTs({super.key});

  // mendeklarasikan isi kolom yang akan di tampilkan
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(), // membuat fitur scroll
      shrinkWrap: true,
      itemCount: allWorlds.worlds.length,
      itemBuilder: (ctx, i) =>
          Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(
                top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black, blurRadius: 5, spreadRadius: 1)]),
              child: Column(
                // berfungsi untuk menampilkan title dan gambar yang telah di buat pada Spek_World
                children: [
                  Hero(tag: allWorlds.worlds[i].title,
                      child: Image.asset(allWorlds.worlds[i].path)),
                  Text(
                    allWorlds.worlds[i].title,
                    style: TextStyle(fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
      //jumlah tabel yang tampil
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), // mengatur jumlah baris gambar yang akan di tampilkan
    );
  }
}