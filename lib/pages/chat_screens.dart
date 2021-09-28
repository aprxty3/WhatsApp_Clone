import 'package:flutter/material.dart';
import '../module/chat_module.dart';
class Chat extends StatefulWidget {

  @override
  ChatState createState() {
    return new ChatState();
  }
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return new ListView.builder(
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(Data[i].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(Data[i].name, style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text(Data[i].message, style: new TextStyle(fontWeight: FontWeight.bold),),
                new Text(Data[i].time, style: new TextStyle(fontSize: 14.0, color: Colors.grey),)
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top : 5.0),
              child: new Text(
                Data[i].message,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      itemCount: Data.length);
  }
}