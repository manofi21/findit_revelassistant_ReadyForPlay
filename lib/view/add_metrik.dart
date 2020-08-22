import 'package:cake/view/widget/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Metrik_View extends StatefulWidget {
  @override
  _Metrik_ViewState createState() => _Metrik_ViewState();
}

class _Metrik_ViewState extends State<Metrik_View> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            child: Center(
              child: ListTile(
                title: Text("Tentukan Metrik",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 28)),
                subtitle: Text("Pilih 5 Metrik utama yang bisa diperlihatkan di beranda",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(20))),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
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
              image: background_png
            ),
            child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("1. Metrik Pertama", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("Laba Bersih"),
                        isExpanded: true,
                        onChanged: (String newValue) {},
                        items: ["providers.list_dd"].map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      )),
                ),
                SizedBox(height: 10),
                Text("2. Metrik Kedua", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("Jumlah Penjualan"),
                        isExpanded: true,
                        onChanged: (String newValue) {},
                        items: ["providers.list_dd"].map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      )),
                ),
                SizedBox(height: 10),
                Text("3. Metrik Ketiga", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("pilih"),
                        isExpanded: true,
                        onChanged: (String newValue) {},
                        items: ["providers.list_dd"].map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      )),
                ),
                SizedBox(height: 10),
                Text("4. Metrik Keempat", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("pilih"),
                        isExpanded: true,
                        onChanged: (String newValue) {},
                        items: ["providers.list_dd"].map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      )),
                ),
                SizedBox(height: 10),
                Text("5. Metrik Kelima", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("pilih"),
                        isExpanded: true,
                        onChanged: (String newValue) {},
                        items: ["providers.list_dd"].map((e) => DropdownMenuItem<String>(
                          child: Text(e),
                          value: e,
                        ))
                            .toList(),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(onPressed: (){}, child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text("Simpan", style: TextStyle(color: Colors.white),),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ]
    );
  }
}
