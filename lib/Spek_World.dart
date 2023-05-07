
class WorldItem {
  final String title;
  final String path;
  WorldItem(
      {required this.title,
        required this.path});
}
// membuat list untuk menampilkan gambar dan title nya
WorldsList allWorlds = WorldsList(worlds: [
  WorldItem(
      title: 'Jepang',
      path: 'images/assets/w1.jpg'),
  WorldItem(
      title: 'Indonesia',
      path: 'images/assets/w2.jpg'),
  WorldItem(
      title: 'Amerika',
      path: 'images/assets/w3.jpg'),
  WorldItem(
      title: 'German',
      path: 'images/assets/w4.jpg'),
  WorldItem(
      title: 'Inggris',
      path: 'images/assets/w5.jpg'),
  WorldItem(
      title: 'Australia',
      path: 'images/assets/w6.jpg'),
  WorldItem(
      title: 'India',
      path: 'images/assets/w7.jpg'),
  WorldItem(
      title: 'Denmark',
      path: 'images/assets/w8.jpg'),
  WorldItem(
      title: 'Thailand',
      path: 'images/assets/w9.jpg'),
  WorldItem(
      title: 'Korea',
      path: 'images/assets/w10.jpg'),
  WorldItem(
      title: 'China',
      path: 'images/assets/w11.jpg'),
  WorldItem(
      title: 'Malaysia',
      path: 'images/assets/w12.jpg'),
]);

class WorldsList {
  List<WorldItem> worlds;
  WorldsList({required this.worlds});
}
