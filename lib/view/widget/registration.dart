import 'package:cake/provider/provider.dart';
import 'package:cake/provider/service/auth_firebase.dart';
import 'package:cake/provider/service/service.dart';
import 'package:cake/view/widget/complete.dart';
import 'package:cake/view/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:provider/provider.dart';

import '../../home.dart';

class Registration_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController nameBusinessController = TextEditingController();
    TextEditingController phoneBusinessController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    // FirebaseDatabase database = new FirebaseDatabase();
    DatabaseReference _userRef =
        FirebaseDatabase.instance.reference().child("user");

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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                      padding: EdgeInsets.symmetric(horizontal: 8),
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
                  height: 5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // dbRef.orderByChild("age").equalTo("4").once(),
                    Consumer<AppProvider>(
                      builder: (context, providers, _) {
                        return FlatButton(
                            onPressed: () async {
                              String userFirebase;
                              FirebaseAuthnetication auth =
                                  FirebaseAuthnetication();

                              try {
                                userFirebase = await auth.signUp(
                                    emailController.text,
                                    passwordController.text);
                              } catch (e) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        modalDialogItem(context, e.toString()));
                                print(e.toString());
                              }

                              try {
                                _userRef.push().set(<String, String>{
                                  "name": nameController.text,
                                  "phone_number": phoneNumberController.text,
                                  "email": emailController.text,
                                  "bussiness_phone":
                                      phoneBusinessController.text,
                                  "bussiness_name": nameBusinessController.text
                                });
                              } catch (e) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        modalDialogItem(context, e.toString()));
                                print(e.toString());
                              }
                              providers.usernameProvider = nameController.text;
                              // _userRef.orderByChild("email").equalTo("4").once();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (BuildContext context) =>
                                        CompletePage()),
                              );
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
                            ));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("sudah punya akun? "),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (BuildContext context) => Login_View()),
                    );
                  },
                  child: Text(
                    "Masuk sini",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
