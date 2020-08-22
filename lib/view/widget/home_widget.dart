import 'package:cake/provider/provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'diagram.dart';
import 'image_assets.dart';

Widget incrementDereament() {
  return Column(
    children: [
      ListTile(
        leading: Icon(
          Icons.keyboard_arrow_up,
          size: 20,
        ),
        title: Text("Rp 500.000", style: TextStyle(fontSize: 25)),
        subtitle: Text("Penghasilan"),
        trailing: Icon(Icons.menu),
      ),
      ListTile(
        leading: Icon(Icons.keyboard_arrow_down, size: 20),
        title: Text("Rp 100.000", style: TextStyle(fontSize: 25)),
        subtitle: Text("Pengeluaran Operasi"),
        trailing: Icon(Icons.menu),
      )
    ],
  );
}

Widget widgetsNew() {
  return Consumer<AppProvider>(
      builder: (context, providers, _) => AspectRatio(
            aspectRatio: 0.90,
            child: Container(
              padding: EdgeInsets.only(bottom: 140),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      alignment: Alignment(0, -0.8),
                      color: Colors.grey.withOpacity(.1),
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Text(
                        "Rp 500.000,00",
                        style: TextStyle(fontSize: 13.5),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                          title: Text(
                            'Prediction',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                            hint: Text("Day"),
                            onChanged: (String newValue) {},
                            items: providers.list_dd,
                          ))),
                      Expanded(
                        child: Container(
                          padding:
                              const EdgeInsets.only(right: 16.0, left: 16.0),
                          child: LineChart(
                            prediction(),
                            swapAnimationDuration:
                                const Duration(milliseconds: 250),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}

Widget diagramPrediction() {
  return Consumer<AppProvider>(
      builder: (context, providers, _) => AspectRatio(
            aspectRatio: 0.80,
            child: Container(
              margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  // top: 20
                  top: (MediaQuery.of(context).size.height / 5) - 35),
              decoration: BoxDecoration(
                image: background_png,
                borderRadius: const BorderRadius.all(Radius.circular(18)),
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
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 50),
                    child: Container(
                      alignment: Alignment(0, -0.8),
                      color: Colors.grey.withOpacity(.1),
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Text(
                        "Rp 500.000,00",
                        style: TextStyle(fontSize: 13.5),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ListTile(
                          title: Text(
                            'Prediction',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                            hint: Text("Day"),
                            onChanged: (String newValue) {},
                            items: providers.list_dd,
                          ))),
                      const SizedBox(
                        height: 37,
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 30.0, left: 30.0),
                          child: LineChart(
                            prediction(),
                            swapAnimationDuration:
                                const Duration(milliseconds: 250),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      incrementDereament()
                    ],
                  ),
                ],
              ),
            ),
          ));
}

Widget laba_diagram() {
  return Consumer<AppProvider>(
      builder: (context, providers, _) => AspectRatio(
            aspectRatio: 0.75,
            child: Container(
              margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  // top: 20
                  top: (MediaQuery.of(context).size.height / 5) - 35),
              decoration: BoxDecoration(
                image: background_png,
                borderRadius: const BorderRadius.all(Radius.circular(18)),
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
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ListTile(
                          title: Text(
                            'Laba Bersih',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                            hint: Text("Day"),
                            onChanged: (String newValue) {},
                            items: providers.list_dd,
                          ))),
                      ListTile(
                        title: Text(
                          "Rp 500.000",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            child: LineChart(
                              laba_dataDiagram(),
                              swapAnimationDuration:
                                  const Duration(milliseconds: 250),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}
