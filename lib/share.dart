import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

sharetowhatsapp(String image)async{
  final ByteData bytes = await rootBundle.load(image);
  await Share.file('StatusApp','status.jpg',bytes.buffer.asUint8List(),'image/jpg',text:"Shared from WhatsappStatusApp");
}