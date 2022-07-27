import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'yemeksec.com',
            style: TextStyle(color: Colors.pink),
          ),
        ),
        body: YemekSec(),
      ),
    );
  }
}

class YemekSec extends StatefulWidget {
  @override
  State<YemekSec> createState() => _YemekSecState();
}

class _YemekSecState extends State<YemekSec> {
  int corbaNo = 1;
  int yemekNo = 4;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekGetir() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  void tatliGetir() {
    setState(() {
      tatliNo = Random().nextInt(4) + 1;
    });
  }

  void corbaGetir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Yemeğini Seç',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                color: Color.fromARGB(255, 229, 30, 179),
                highlightColor: Color.fromARGB(255, 237, 4, 4),
                splashColor: Color.fromARGB(255, 255, 255, 255),
                onPressed: corbaGetir,
                child: Text(
                  'Çorba',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              FlatButton(
                color: Color.fromARGB(255, 229, 30, 179),
                highlightColor: Color.fromARGB(255, 237, 4, 4),
                splashColor: Color.fromARGB(255, 255, 255, 255),
                onPressed: yemekGetir,
                child: Text(
                  'Yemek',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              FlatButton(
                color: Color.fromARGB(255, 229, 30, 179),
                highlightColor: Color.fromARGB(255, 237, 4, 4),
                splashColor: Color.fromARGB(255, 255, 255, 255),
                onPressed: tatliGetir,
                child: Text(
                  'Tatlı',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(child: Image.asset('assets/corba_$corbaNo.jpg')),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          Expanded(child: Image.asset('assets/yemek_$yemekNo.jpg')),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          Expanded(child: Image.asset('assets/tatli_$tatliNo.jpg')),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 300,
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
