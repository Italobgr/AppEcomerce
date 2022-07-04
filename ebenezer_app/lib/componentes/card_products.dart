import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Quatree",
      "picture": "images/produtosimage/quatre.jpg",
      "price": 115,
      "quantidade": "1",
    },
    {
      "name": "Magnus",
      "picture": "images/produtosimage/mag.jpg",
      "price": 115,
      "quantidade": "1",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return new Single_cart_products(
        cart_prod_name: Products_on_the_cart[index]["name"],
        cart_prod_quantidade: Products_on_the_cart[index]["quantidade"],
        cart_prod_price: Products_on_the_cart[index]["price"],
        cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_quantidade;
  final cart_prod_price;
  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_quantidade,
    this.cart_prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //================LISTA=================
        leading: new Image.asset(cart_prod_picture,width: 100.0,
            height: 80.0,),
        //==============TITULO==================
        title: new Text(cart_prod_name),
        //==============SUBTITULO===============
        subtitle: new Column(
          children: <Widget>[
           //ROW INSERIDO NA COLUNA
            new Row(
              children: <Widget>[
                //~~~~~~~~~~~~~~quantidade trocada pelo size~~~~~~~~~~~~
           Padding(
             padding: const EdgeInsets.all(0.0),
                  child: new Text("Quantidade:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),//pode colocar um rgb
                  child: InkWell(
                  child: new Text(cart_prod_quantidade,style:TextStyle(color: Colors.black),),
                )),
//~~~~~~~~~~~~~~~~~~~~preços do produto~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
             new Container(
               alignment: Alignment.topLeft,
               child: new Text("R\$${cart_prod_price}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.purple),),
             ),
              ],
            )
          ],
        ),
        trailing: new Column(

          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

