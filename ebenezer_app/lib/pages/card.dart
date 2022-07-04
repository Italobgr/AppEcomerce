import 'package:flutter/material.dart';

//meus importados
import 'package:ebenezerapp/componentes/card_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Carrinho', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],
      ),
      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: new Text("R\$230"),
              ),
            ),

            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Comprar",style: TextStyle(color: Colors.white),),
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

