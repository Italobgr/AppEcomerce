import 'package:ebenezerapp/pages/products_details.dart';
import 'package:flutter/material.dart';
//import 'package:ebenezerapp/pages/products_details.dart';

class Produtos extends StatefulWidget {
  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  var product_list = [
    {
      "name": "Quatree",
      "picture": "images/produtosimage/quatre.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Magnus",
      "picture": "images/produtosimage/mag.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Cibau",
      "picture": "images/produtosimage/cibau.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Hotdog",
      "picture": "images/produtosimage/download.jpg",
      "old_price": 120,
      "price": 85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  //pode dar problema no hero ep20
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new PruductDetails()));},
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child:  new Row(children: <Widget>[
                    Expanded(
                      child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                    new Text("R\$${  prod_price}",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                  ],),
                ),
                child:Image.asset(prod_picture,
                  fit: BoxFit.cover,)),
          ),
        ),
      ),
    );
  }
}

