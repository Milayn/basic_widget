import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Row ListViewStyle(String url, String keterangan) {
    return Row(children: <Widget>[
      Container(
        color: Colors.deepOrange,
        padding: const EdgeInsets.only(left: 30.0),
        child: Image(
          width: 120,
          height: 120,
          image: NetworkImage(url),
          fit: BoxFit.fitWidth,
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        color: Colors.deepOrange,
        alignment: Alignment.center,
        height: 120.0,
        width: 310.0,
        child: Text(keterangan),
      )
    ]);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Apps"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("BERITA TERBARU",
                      style: TextStyle(fontSize: 15)),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("PERTANDINGAN HARI INI",
                      style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Container(
              height: 200.0,
              child: GridView.count(
                crossAxisSpacing: 5.0,
                crossAxisCount: 5,
                childAspectRatio: 9 / 24,
                children: <Widget>[
                  Image.network(
                    "https://t-2.tstatic.net/bengkulu/foto/bank/images/Kylian-Mbappe-Pernah-Berseteru-dengan-Neymar-Peran-Lionel-Messi-Menengahi-Perselisihan.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://img.okezone.com/okz/500/library/images/2022/10/29/5v452n82krttsggh9vak_19143.JPG",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd8fd9c190cff02da/6329018a6ced0010ca9f0b87/Cristiano_Ronaldo_Portugal_2022.png",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://cdns.klimg.com/bola.net/library/upload/21/2019/05/645x430/david-beckham_13d3d75.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://cdns.klimg.com/bola.net/library/upload/20/2016/03/kaka_9fca1e4.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                "Lima Pesepak Bola yang Terkenal Dermawan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 650.0,
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                ListViewStyle(
                    "https://t-2.tstatic.net/bengkulu/foto/bank/images/Kylian-Mbappe-Pernah-Berseteru-dengan-Neymar-Peran-Lionel-Messi-Menengahi-Perselisihan.jpg",
                    "1. Kylian Mbappe"),
                ListViewStyle(
                    "https://img.okezone.com/okz/500/library/images/2022/10/29/5v452n82krttsggh9vak_19143.JPG",
                    "2. Lionel Messi"),
                ListViewStyle(
                    "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd8fd9c190cff02da/6329018a6ced0010ca9f0b87/Cristiano_Ronaldo_Portugal_2022.png",
                    "3. Christiano Ronaldo"),
                ListViewStyle(
                    "https://cdns.klimg.com/bola.net/library/upload/21/2019/05/645x430/david-beckham_13d3d75.jpg",
                    "4. David Beckham"),
                ListViewStyle(
                    "https://cdns.klimg.com/bola.net/library/upload/20/2016/03/kaka_9fca1e4.jpg",
                    "5. Ricardo Kaka")
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
