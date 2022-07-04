import 'package:flutter/material.dart';

class utens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Ebenézer', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () {}),
        ],),


    );
  }
}
