import 'package:cake/provider/service/auth_firebase.dart';
import 'package:cake/provider/service/service.dart';
import 'package:cake/view/login.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class Registration_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController nameBusinessController = TextEditingController();
    TextEditingController phoneBusinessController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Center(
              child: ListTile(
                title: Text("Registrasi",
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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
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
                      child: Text("Name",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("Nomor Telepon",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: phoneNumberController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("Name Bisnis",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: nameBusinessController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("Nomor Telepon Bisnis",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        controller: phoneBusinessController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("Alamat Email",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                    )
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
                          bool userFirebase = await auth.signUp(
                              emailController.text, passwordController.text);
                          String user = userFirebase
                              ? "Selamat! Kamu Sudah Bisa Login"
                              : "Maaf ada kesalahan. Silahkan coba regis password/ email lain";
                          showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      modalDialogItem(context, user))
                              .then((_) => userFirebase
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          fullscreenDialog: true,
                                          builder: (BuildContext context) =>
                                              Login_View()),
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
                            "Simpan",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => SecondRoute()),
// );
