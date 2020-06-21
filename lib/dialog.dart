import 'package:flutter/material.dart';
import 'package:whatsapp_stickers/share.dart';

opendialog(context, String image) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            child: Container(
                width: 640,
                height: 400,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 640,
                      height: 400,
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => sharetowhatsapp(image),
                      child: Container(
                        margin: EdgeInsets.only(top: 300, left: 20),
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.green[200]),
                        child: Center(
                            child: Text(
                          "Share to Status",
                          textAlign: TextAlign.center,
                        )),
                      ),
                    )
                  ],
                )));
      });
}
