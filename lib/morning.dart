import 'package:flutter/material.dart';

import 'dialog.dart';
class Morning extends StatefulWidget {
  @override
  _MorningState createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  List<String> image_list = [
    'assets/morning/morning1.jpg',
    'assets/morning/morning2.jpg',
    'assets/morning/morning3.jpg',
    'assets/morning/morning4.jpg',
    'assets/morning/morning5.jpg',

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
                        'assets/morning/morning1.jpg',
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