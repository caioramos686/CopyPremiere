import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.connected_tv, size: 17.sp,),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.all(60),
          child: Image.asset(
            "images/EscudoPremiere.png",
            width: 500.sp,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: incluiStack(),
    );
  }
}

Widget incluiStack() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Stack(
      children: <Widget>[
        Image.asset(
          "images/PremierePlay.png",
          width: 550.sp,
        ),
        Positioned(
          bottom: 15.sp,
          right: 90.sp,
          left: 80.sp,
          child: TextButton(
              child: AutoSizeText(
                    "ASSISTA AGORA",
                    minFontSize: 10,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
            style: TextButton.styleFrom(
              side: BorderSide(color: Colors.white),
            ),
            onPressed: () {}
          ),
          // child: ElevatedButton(
          //   onPressed: () {},
          //   child: AutoSizeText(
          //     "ASSISTA AGORA",
          //     minFontSize: 10,
          //     maxLines: 1,
          //     style: TextStyle(
          //       fontSize: 15.sp,
          //     ),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     elevation: 0,
          //     primary: Colors.red.withOpacity(0),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(2),
          //         ),
          //         side: BorderSide(color: Colors.white)),
          //   ),
          // ),
        ),
      ],
    ),
  );
}
