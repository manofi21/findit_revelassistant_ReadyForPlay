import 'package:cake/view/registration.dart';
import 'package:cake/view/widget/image_assets.dart';
import 'package:flutter/material.dart';

class AppsLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            landing_picture,
            SizedBox(
              height: 25,
            ),
            FlatButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                  child: Text(
                    "Masuk dengan Email",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("pengguna baru? "),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (BuildContext context) => Registration_View()),
                      );
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
