import 'package:flutter/material.dart';
import 'package:koalove2/widgets/left_drawer.dart';
import 'package:koalove2/widgets/item_card.dart';

// class tampilan home page
class MyHomePage extends StatelessWidget  {
  // deklarasi variable
  final String npm = '2306165603'; // NPM
  final String name = 'Marla Marlena'; // Nama
  final String className = 'PBP C'; // Kelas
  
  // mendeklarasikan parameter key
  MyHomePage({super.key});

  // untuk button 
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Produk", Icons.list),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  // untuk warna button
  final List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        title: const Text(
          'Koalove',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // kasih padding 16 piksel
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column( // bikin widget nya tuh vertikal
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Koalove!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10, // menentukan jarak grid secara horizontal
                    mainAxisSpacing: 10, // menentukan jarak grid secara vertikal
                    crossAxisCount: 3, // menentukan jumlah kolom grid
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.asMap().entries.map((entry) { // bikin dia jadi map
                      int index = entry.key; // mengambil kunci dari map
                      ItemHomepage item = entry.value; // mengambil nilai dari map
                      return ItemCard(item: item, color: colors[index % colors.length]); // mengembalikan nilai dari map berupa item dan warna
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class untuk setiap card
class InfoCard extends StatelessWidget {
  // deklarasi variabel title dan content
  final String title;  
  final String content;  

  // konstruktor InfoCard
  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0, // semacam shadow
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0), // kasih padding 16 piksel
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

// Mendapatkan warna item berdasarkan indeksnya.
Color getItemColor(int index) {
  final List<Color> itemColors = [Colors.red, Colors.green, Colors.blue];
  return itemColors[index % itemColors.length];
}