import 'package:cake/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';
import 'package:provider/provider.dart';

import 'widget/image_assets.dart';

class SecretaryAI extends StatefulWidget {
  @override
  _SecretaryAIState createState() => _SecretaryAIState();
}

class _SecretaryAIState extends State<SecretaryAI> {
  void response(query) async {
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/reveal-assistant-6fb0d4eb7fab.json")
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });
  }

  final messageInsert = TextEditingController();
  List<Map> messages = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text("Reveal Assistant"), backgroundColor: Colors.blueAccent),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: ListTile(
                title: Text("Pelayanan",
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
          Column(
            children: <Widget>[
              Flexible(
                  child: ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      padding: EdgeInsets.all(10.0),
                      itemBuilder: (context, index) => messages[index]
                                  ["data"] ==
                              0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    littleBigLogo,
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "Revel Assistant",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.blue[900]),
                                    )
                                  ],
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    margin: EdgeInsets.only(
                                      left: 15,
                                      right: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(7)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.transparent
                                                .withOpacity(0.2),
                                            blurRadius: 2.0,
                                            spreadRadius: 1.0,
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ))
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                        messages[index]["message"].toString())),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Consumer<AppProvider>(
                                    builder: (context, providers, _) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 14, top: 10),
                                    child: Text(
                                      providers.usernameProvider,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          bottom: 10,
                                          top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(7)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.transparent
                                                  .withOpacity(0.2),
                                              blurRadius: 2.0,
                                              spreadRadius: 1.0,
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ))
                                        ],
                                        color: Colors.white,
                                      ),
                                      child: Text(
                                        messages[index]["message"].toString(),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ))),
              Divider(
                height: 3.0,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: TextField(
                      controller: messageInsert,
                      decoration: InputDecoration.collapsed(
                          hintText: "Send your message"),
                    )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      child: IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            if (messageInsert.text.isEmpty) {
                              print("empty message");
                            } else {
                              setState(() {
                                messages.insert(0,
                                    {"data": 1, "message": messageInsert.text});
                              });
                              response(messageInsert.text);
                              messageInsert.clear();
                            }
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
