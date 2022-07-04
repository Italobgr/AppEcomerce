import 'package:ebenezerapp/categorias/racao/fvo.dart';
import 'package:ebenezerapp/categorias/racao/granvita.dart';
import 'package:ebenezerapp/categorias/racao/magnus.dart';
import 'package:flutter/material.dart';

class marcas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Fabricantes', textAlign: TextAlign.center,
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
                  onPressed: () { Navigator.push(
                   context,
                       MaterialPageRoute(
                          builder: (context) => granvita()));},
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Granvita",
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => magnus()));
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Magnus",
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fvo()));
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Fvo",
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
