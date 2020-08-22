import 'package:flutter/material.dart';

class EditData_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Container(
            child: Center(
              child: ListTile(
                title: Text("Edit Data",
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
                      child: Text("1. Penghasilan",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("2. Pengeluaran Operasi",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("3. Laba Operasi",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("4. Depresiasi",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("5. Bunga",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("6. Laba Bersih",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("7. Pajak",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("8. Laba Setelah Pajak",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      child: Text("9. Jumlah Penjualan",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: "Rp", border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                        onPressed: () {},
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
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
