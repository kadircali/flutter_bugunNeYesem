import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "BUGÜN NE YESEM",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

int corbaNo = 1;
int yemekNo = 1;
int tatliNo = 1;
List<String> corbaAdlari = [
  "mercimek",
  "tarhana",
  "tavuksuyu",
  "düğün",
  "yoğurt"
];

List<String> yemekdlari = [
  "karnıyarık",
  "mantı",
  "kuru fasulye",
  "içli köfte",
  "balık"
];

List<String> tatliadlari = [
  "kadayıf",
  "baklava",
  "sütlaç",
  "kazandibi",
  "dondurma"
];

class _YemekSayfasiState extends State<YemekSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    overlayColor: Colors.white,
                  ),
                  onPressed: () {
                    print("tuşa basıldı");
                    setState(() {
                      degistir();
                    });
                  },
                  child: Image.asset("assets/images/corba_${corbaNo}.jpg")),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    overlayColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      degistir();
                    });
                  },
                  child: Image.asset("assets/images/yemek_${yemekNo}.jpg")),
            ),
          ),
          Text(yemekdlari[yemekNo - 1]),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    overlayColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      degistir();
                    });
                  },
                  child: Image.asset("assets/images/tatli_${tatliNo}.jpg")),
            ),
          ),
          Text(tatliadlari[tatliNo - 1]),
        ],
      ),
    );
    ;
  }
}

void degistir() {
  corbaNo = Random().nextInt(5) + 1;
  yemekNo = Random().nextInt(5) + 1;
  tatliNo = Random().nextInt(5) + 1;
}
