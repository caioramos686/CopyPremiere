import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:premiere_copy/view/historicoSCCP.dart';
import 'package:premiere_copy/view/historicoSEP.dart';
import 'package:premiere_copy/view/historicoSFC.dart';
import 'package:premiere_copy/view/historicoSP.dart';
import 'package:premiere_copy/view/historicos.dart';
import 'package:sizer/sizer.dart';

class Filtro extends StatelessWidget {
  static const String _title = "Filtrar Time";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(title: const Text(_title), backgroundColor: Colors.black,),
          body: ListView(
            children: <Widget>[
              Botoes(Icons.sports_soccer, "Todos", Historicos()),
              Botoes(Icons.sports_soccer, "São Paulo", HistoricoSP()),
              Botoes(Icons.sports_soccer, "Palmeiras", HistoricoSEP()),
              Botoes(Icons.sports_soccer, "Corinthians", HistoricoSCCP()),
              Botoes(Icons.sports_soccer, "Santos", HistoricoSFC()),
            ],
          )),
    );
  }
}

class Botoes extends StatelessWidget {
  late String _texto;
  late var _icone;
  late var _time;

  Botoes(this._icone, this._texto, this._time);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width * 0.29,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Card(
        color: Colors.white10,
        child: ListTile(
          leading: Icon(_icone, color: Colors.white,),
          title: AutoSizeText(
            _texto,
            maxFontSize: 26,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => _time));
          },
        ),
      ),
    );
  }
}