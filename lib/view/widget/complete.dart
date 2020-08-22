import 'package:cake/home.dart';
import 'package:flutter/material.dart';

import 'image_assets.dart';
import 'login.dart';

class CompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Registrasi Selesai",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 30,
            ),
            complete_icon,
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (BuildContext context) => Login_View()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Text(
                        "Masuk",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
