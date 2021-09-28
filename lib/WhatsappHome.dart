import 'package:app_chat/pages/calls.dart';
import 'package:app_chat/pages/cameras.dart';
import 'package:app_chat/pages/chat_screens.dart';
import 'package:app_chat/pages/status.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget{
  @override
  WhatsAppState createState() => new WhatsAppState();

}
class WhatsAppState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin{
    TabController tabController;

    @override
  void initState() {
    // TODO: implement initState
      super.initState();
      tabController = new TabController(length : 4, vsync: this, initialIndex: 1);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title : new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text : "CHATS"),
            new Tab(text : "STATUS"),
            new Tab(text : "CALLS"),
          ],
        ),
        actions : <Widget>[
          new Icon(Icons.search), new Padding(
            padding : const EdgeInsets.symmetric(horizontal: 5.0),),
        new Icon(Icons.menu)],
      ),
      body: new TabBarView(
          controller: tabController,
          children: <Widget>[
            new Camera(),
            new Chat(),
            new Status(),
            new Call(),
          ],
      ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.white,
            child: new Icon(Icons.message),
            onPressed: () => print("Open chats"),
        ),
    );
  }
}