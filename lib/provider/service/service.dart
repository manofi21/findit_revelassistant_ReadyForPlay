import 'package:flutter/material.dart';

AlertDialog modalDialogItem(BuildContext context, String messages) {
  AlertDialog alerts = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    titlePadding: EdgeInsets.zero,
    title: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Align(
            alignment: Alignment(0.9, -0.9),
            child: InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Icon(
                Icons.close,
              ),
            ),
          ),
        ],
      ),
    ),
    content: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Text(messages),
        )),
    actions: [
      InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Text(
            "kembali",
            style: TextStyle(color: Colors.black),
          ),
        ),
      )
    ],
  );
  return alerts;
  // showDialog(context: context, builder: (BuildContext context) => alerts);
}
