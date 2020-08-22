import 'package:cake/view/widget/diagram.dart';
import 'package:flutter/material.dart';
import 'widget/home_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              child: Center(
                child: ListTile(
                  title: Text("Beranda",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 28)),
                  trailing: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print("object");
                      }),
                ),
              ),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
            ),
            diagramPrediction(),
            Container(
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage(assetName))
              ),
              margin: EdgeInsets.only(top: 450), child: laba_diagram()),
            Container(
                margin: EdgeInsets.only(top: 1060), child: PieChartSample2()),
            Container(
                margin: EdgeInsets.only(top: 1330),
                child: SizedBox(
                  height: 5,
                )),
          ],
        ),
      ],
    ));
  }
}
