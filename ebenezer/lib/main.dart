import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main(){

  Firestore.instance
  .collection("usuarios")
  .document("001")
  .setData({"nome": "bruno"});

  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}
