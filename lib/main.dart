import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context)
            .size
            .height, // Buat background memenuhi konten
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background-1.jpg'),
            fit: BoxFit.cover, // Background mengikuti ukuran konten
          ),
        ),
        child: Center(
          // Membuat card berada di tengah
          child: SingleChildScrollView(
            // Menggunakan SingleChildScrollView agar bisa scroll secara vertikal
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Menggunakan padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Posisikan konten di tengah vertikal
                children: <Widget>[
                  // Kotak Pertama (Profil)
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(121, 113, 95, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          16.0), // Menambahkan padding pada card
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 100.0,
                            backgroundImage:
                                AssetImage('assets/images/angger-1.jpg'),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Angger Kalehandya Sutarto",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const Text(
                            "Vocational High School Student at SMK Wikrama Bogor",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            },
                            child: const Text('See More'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacer antar Card
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
