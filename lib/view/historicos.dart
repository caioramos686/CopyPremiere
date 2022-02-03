import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:premiere_copy/view/filtro.dart';
import 'package:sizer/sizer.dart';

class Historicos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll){
          overScroll.disallowIndicator();
          return false;
        },
        child: ListView(
          children: <Widget>[
            Partidas(
              'images/Paulistao2021.jpg',
              "FINAL DO PAULISTÃO 2021\n"
                  "São Paulo 2 x 0 Palmeiras\n"
                  "pelo Campeonato Paulista\n"
                  "2021.",
            ),
            Partidas(
              'images/Palmeiras.jpg',
                "FINAL DO PAULISTÃO 2020\n"
                    "Palmeiras 1(4 x 3)1 Corinthians\n"
                    "pelo Campeonato Paulista\n"
                    "2020.",
            ),
            Partidas(
              'images/Corinthians.jpg',
                "FINAL DO PAULISTÃO 2021\n"
                    "Corinthians 2 x 1 São Paulo\n"
                    "pelo Campeonato Paulista\n"
                    "2019.",
            ),
            Partidas(
              'images/Santos.jpg',
                "FINAL DO PAULISTÃO 2021\n"
                    "Santos 2 x 1 Ituano\n"
                    "pelo Campeonato Paulista\n"
                    "2016.",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Card(
          color: Colors.black,
          child: ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            title: AutoSizeText(
              "EXCLUSIVO ASSINANTE",
              maxFontSize: 30,
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(220),
            child: Column(
              children: [
                ListTile(
                  title: AutoSizeText(
                    "Jogos históricos",
                    maxFontSize: 45,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                    ),
                  ),
                ),
                ListTile(
                  title: AutoSizeText(
                    "Assista a compactos de partidas\n"
                    "inesquecíveis.",
                    textAlign: TextAlign.start,
                    maxFontSize: 23,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        "Todos",
                        maxFontSize: 22,
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          side: BorderSide(color: Colors.white10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Filtro()));
                      },
                      child: AutoSizeText(
                        "Time▼",
                        maxFontSize: 22,
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          side: BorderSide(color: Colors.white10),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        "Mais recente▼",
                        maxFontSize: 22,
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.red.withOpacity(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class Partidas extends StatelessWidget {
  late var _imagem;
  late String _texto;

  Partidas(this._imagem, this._texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
    padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            _imagem,
          ),
          AutoSizeText(
            _texto,
            minFontSize: 10,
            maxFontSize: 23,
            maxLines: 6,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
