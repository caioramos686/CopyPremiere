import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Jogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_today, size: 17.sp,),
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.white10,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.075,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white70,
                      size: 18.sp,
                    ),
                    onPressed: () {},
                  ),
                  AutoSizeText(
                    "Hoje",
                    maxFontSize: 28,
                    minFontSize: 15,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.sp,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white70,
                      size: 18.sp,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Icon(
                      Icons.sports_outlined,
                      color: Colors.white70,
                      size: 130,
                    ),
                  ),
                  AutoSizeText(
                    "\nNão encontramos\n"
                        "jogos no dia selecionado",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white70,
                    ),
                    minFontSize: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      color: Colors.white10,
                      child: ListTile(
                        title: Text(
                          "Ver calendário",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
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
          ],
          ),
        );
  }
}
