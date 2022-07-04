import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'marcas/marcas.dart';

class cate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Carrinho', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
            const EdgeInsets.fromLTRB(14.0, 15.0, 14.0, 8.0),
            child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.7),
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => marcas()));},//marcas()
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Rações",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
            child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.7),
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Itens",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
            child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.7),
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Brinquedos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
