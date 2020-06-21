import 'package:flutter/material.dart';
import 'package:whatsapp_stickers/morning.dart';
import 'package:whatsapp_stickers/motivational.dart';
import 'package:whatsapp_stickers/scenery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  buildTabs(String title) {
    return Card(
      child: Container(
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          color:Colors.blue[200],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(child: Text(title)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsappStatus",
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text("WhatsappStatus App",style: TextStyle(color:Colors.blue),),
              ),
              bottom: TabBar(isScrollable:true,tabs: [buildTabs("Motivational"),buildTabs("Scenery"),buildTabs("Morning")]),
            ),
            body:  TabBarView(children: [
              Motivational(),
              Scenery(),
              Morning(),
            ]),
          )),
    );
  }
}
