import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int counter = 0;
  int currentIndex = 0;

  void showSnack(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: warna latar halaman
      backgroundColor: Colors.grey.shade200,

      // appBar: bagian atas
      appBar: AppBar(
        title: const Text('Scaffold Demo'),
        backgroundColor: const Color.fromARGB(255, 122, 25, 187),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => showSnack('Ini contoh SnackBar dari AppBar'),
          ),
        ],
      ),

      // drawer: menu samping
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.menu),
                title: Text('Menu Drawer'),
                subtitle: Text('Contoh navigasi samping'),
              ),
              const Divider(height: 1),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Kembali ke Menu Utama'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Tampilkan SnackBar'),
                onTap: () {
                  Navigator.pop(context);
                  showSnack('SnackBar dipanggil lewat ScaffoldMessenger');
                },
              ),
            ],
          ),
        ),
      ),

      // body: isi utama
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Ini area BODY',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              Text(
                'Counter: $counter',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => showSnack('Tombol di body ditekan'),
                child: const Text('Tampilkan SnackBar'),
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: tombol melayang
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() => counter++);
          showSnack('FAB ditekan, counter jadi $counter');
        },
        child: const Icon(Icons.add),
      ),

      // bottomNavigationBar: navigasi bawah
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() => currentIndex = i);
          showSnack('Pindah ke tab: $i');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
