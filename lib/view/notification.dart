import 'package:flutter/material.dart';

import 'widget/image_assets.dart';

class Notification_View extends StatelessWidget {
  @override //background_png
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Center(
            child: ListTile(
              title: Text("Notifikasi",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28)),
              trailing: Icon(
                Icons.notifications_off,
                color: Colors.white,
              ),
            ),
          ),
          height: 150,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(image: background_png),
          child: Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                // top: 20
                //                top: (MediaQuery.of(context).size.height / 5) - 35
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  svgIcon,
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jumlah Penjualan",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 8.5,
                          ),
                          Text(
                            "Feb 17, 2020 23:59 WIB",
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                      Text("Naik 5% pada produk Acer dalam 24 Jam")
                    ],
                  ),
                ],
              )),
        ),
        Container()
      ],
    );
  }
}
