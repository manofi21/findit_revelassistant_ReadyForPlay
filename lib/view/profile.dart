import 'package:cake/provider/provider.dart';
import 'package:cake/view/text_ai.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'edit_data.dart';
import 'widget/call_page.dart';
import 'widget/image_assets.dart';

class Profile_View extends StatefulWidget {
  @override
  _Profile_ViewState createState() => _Profile_ViewState();
}

class _Profile_ViewState extends State<Profile_View> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Center(
            child: ListTile(
              title: Consumer<AppProvider>(builder: (context, providers, _) {
                return Text("Halo ${providers.usernameProvider}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 28));
              }),
              subtitle: Text("Selamat Pagi",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15)),
              trailing: circleAvatar,
            ),
          ),
          height: 150,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: Colors.white,
                  ),
                  child: Container(
                      padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp 500.000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Penghasil"),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ))),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: Colors.white,
                  ),
                  child: Container(
                      padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp 500.000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Laba Bersih"),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ))),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: Colors.white,
                  ),
                  child: Container(
                      padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "95",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Laba Bersih"),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ))),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
            ),
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text("Pelayanan",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          smallLogo,
                          SizedBox(
                            width: 4,
                          ),
                          Text("Revel Assistant")
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      SecretaryAI()),
                            );
                            // SecretaryAI
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13)),
                              color: Colors.grey[300],
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 19),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  message_icon,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Kirim Pesan",
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      Call_View()),
                            );
                            // Call_View
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13)),
                              color: Colors.grey[300],
                            ),
                            child: Container(
                              padding: EdgeInsets.all(18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  telp_icon,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Telepon")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ))),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) => EditData_View()),
              );
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  title: Text("Ubah Data",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.arrow_forward_ios),
                )),
          ),
        ),
      ],
    );
  }
}

/*
                    Text(
                      "Rp 500.000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Penghasil"),
                    SizedBox(
                      height: 5,
                    )
 */
