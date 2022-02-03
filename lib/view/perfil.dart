import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Perfil extends StatelessWidget {
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
            AutoSizeText(
              "\nCONFIGURAÇÕES",
              minFontSize: 13,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            Botoes(Icons.notifications_none, "Notificações"),
            Botoes(Icons.settings, "Qualidade do vídeo"),
            Botoes(Icons.account_circle, "Minha conta"),
            AutoSizeText(
              "\nINFORMAÇÕES LEGAIS",
              minFontSize: 13,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            Botoes(Icons.list_alt, "Termos de uso"),
            Botoes(Icons.lock, "Política de privacidade"),
            AutoSizeText(
              "\nAJUDA",
              minFontSize: 13,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            Botoes(Icons.messenger_outline, "Dúvidas Frequentes"),
            AutoSizeText(
              "V.4.5.2.243",
              minFontSize: 15,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        centerTitle: true,
        title: AutoSizeText(
          "C",
          maxFontSize: 45,
          style: TextStyle(
            fontSize: 30.sp,
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
          child: Column(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        "Caio da Silva Ramos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.sp,
                        ),
                      ),
                      AutoSizeText(
                        "caio.pfn@hotmail.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.sp,
                        ),
                      ),
                      AutoSizeText(
                        "NÃO ASSINANTE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Card(
                  color: Colors.black54,
                  child: ListTile(
                    title: AutoSizeText(
                      "Assinar Premiere",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Card(
                  color: Colors.white10,
                  child: ListTile(
                    title: Text(
                      "Associar operadora",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app_outlined, size: 18.sp,),
          )
        ],
        backgroundColor: Colors.white12,
      ),
    );
  }
}

class Botoes extends StatelessWidget {
  late String _texto;
  late var _icone;

  Botoes(this._icone, this._texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Card(
        color: Colors.white10,
        child: ListTile(
          leading: Icon(
            _icone,
            color: Colors.white,
          ),
          title: AutoSizeText(
            _texto,
            maxLines: 1,
            maxFontSize: 26,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
