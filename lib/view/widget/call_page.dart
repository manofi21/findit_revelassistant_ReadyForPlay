import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image_assets.dart';

class Call_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          logoFull,
          Text("01:20"),
          Column(
            children: [
              end_call,
              Text("Akhiri Paggilan", style: TextStyle(color: Colors.red),)
            ],
          )
        ],
      ),
    );
  }
}