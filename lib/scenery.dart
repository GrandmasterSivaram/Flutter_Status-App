import 'package:flutter/material.dart';

import 'dialog.dart';

class Scenery extends StatefulWidget {
  @override
  _SceneryState createState() => _SceneryState();
}

class _SceneryState extends State<Scenery> {
  List<String> image_list = [
    'assets/scenery/scenery1.jpg',
    'assets/scenery/scenery2.jpg',
    'assets/scenery/scenery3.jpg',
    'assets/scenery/scenery4.jpg',
    'assets/scenery/scenery5.jpg',
    'assets/scenery/scenery6.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/scenery/scenery1.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                children: image_list
                    .map((image) => Card(
                          elevation: 4,
                          child: GestureDetector(
                              onTap: () => opendialog(context, image),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                        image: AssetImage(image),
                                        fit: BoxFit.cover)),
                              )),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}