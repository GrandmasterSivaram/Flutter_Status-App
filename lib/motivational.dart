import 'package:flutter/material.dart';
import 'package:whatsapp_stickers/dialog.dart';

class Motivational extends StatefulWidget {
  @override
  _MotivationalState createState() => _MotivationalState();
}

class _MotivationalState extends State<Motivational> {
  List<String> image_list = [
    "assets/motivational/motivational1.jpg",
    "assets/motivational/motivational2.jpg",
    "assets/motivational/motivational3.jpg",
    "assets/motivational/motivational4.jpg",
    "assets/motivational/motivational5.jpg",
    "assets/motivational/motivational6.jpg",
    "assets/motivational/motivational7.jpg",
    "assets/motivational/motivational8.jpg"
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
                        'assets/motivational/motivational1.jpg',
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
