import 'package:flutter/material.dart';

class adm extends StatefulWidget {
  @override
  _admState createState() => _admState();
}

class _admState extends State<adm> {
  @override
  Widget build(BuildContext context) {
     return Column(
      children: <Widget>[
        ListTile(
          subtitle: FlatButton.icon(
            onPressed: null,
            icon: Icon(
              Icons.attach_money,
              size: 30.0,
              color: Colors.green,
            ),
            label: Text('12,000',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.green)),
          ),
          title: Text(
            'Receita',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.grey),
          ),
        ),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.people_outline),
                          label: Text("Usuarios")),
                      subtitle: Text(
                        '7',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.category),
                          label: Text("Categorias")),
                      subtitle: Text(
                        '23',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.track_changes),
                          label: Text("Produtos")),
                      subtitle: Text(
                        '120',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.tag_faces),
                          label: Text("Sold")),
                      subtitle: Text(
                        '13',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.shopping_cart),
                          label: Text("compras")),
                      subtitle: Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Card(
                  child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.close),
                          label: Text("Retornar")),
                      subtitle: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 60.0),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}