import 'package:cake/home.dart';
import 'package:cake/provider/service/auth_firebase.dart';
import 'package:cake/provider/service/service.dart';
import 'package:cake/view/home.dart';
import 'package:cake/view/widget/registration.dart';
import 'package:cake/view/widget/image_assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Material(
      child: ListView(
        children: [
          Container(
            child: Center(
              child: ListTile(
                title: Text("Masuk",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 28)),
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
              image: background_png,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent.withOpacity(0.2),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0.0,
                      1.0,
                    ))
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Alamat Surel",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("Kata Sandi",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                        onPressed: () async {
                          FirebaseAuthnetication auth =
                              FirebaseAuthnetication();
                          FirebaseUser userFirebase = await auth.signIn(
                              emailController.text, passwordController.text);
                          String user = (userFirebase.uid != null)
                              ? "Halo !! ${userFirebase.displayName}"
                              : "Maaf ada kesalahan. Silahkan coba login dengan password/ email lain";
                          showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      modalDialogItem(context, user))
                              .then((_) => (userFirebase.uid != null)
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          fullscreenDialog: true,
                                          builder: (BuildContext context) =>
                                              BottomTabbar()),
                                    )
                                  : Navigator.pop(context));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Text(
                            "Masuk",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("belum punya akun? "),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (BuildContext context) =>
                              Registration_View()),
                    );
                  },
                  child: Text(
                    "Daftar Aja",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
